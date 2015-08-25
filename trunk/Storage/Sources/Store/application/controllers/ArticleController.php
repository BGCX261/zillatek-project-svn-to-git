<?php

class ArticleController extends Store_Controller
{

    public function indexAction()
    {
        $this->viewAction();
    }

    public function viewAction()
    {
        $topicTbl = new VC_DbTable_Store_Topic();
        $topicId = $this->_getParam("tpid");
        $articleId = $this->_getParam("id");
        if (!$topicId && !$articleId) {
            throw new Zend_Exception("Invalid request, please try again");
        }
        $articleTbl = new VC_DbTable_Store_Article();
        $article = array();

        if (!$articleId) {
            $articleInfo = $articleTbl->findByMaxIdOfTopicAndUserId($topicId, $this->userId);

            if ($articleInfo)
                $articleId = $articleInfo->max_id;
        }
        if ($articleId) {
            $article = $articleTbl->findByIdAndUserId($articleId, $this->userId);
            if (!$topicId) {
                $topicId = $article->topic_id;
            }

            //Get all relative article
            $relativeTbl = new VC_DbTable_Store_RelativeArticle();
            $relativeArticles = $relativeTbl->findRelativeArticleId($articleId);
            $listRelativeArticle = array();
            if ($relativeArticles) {
                //Get article
                $listRelativeArticle = $articleTbl->find(explode(",", $relativeArticles->article_ids))->toArray();
            }

            //LeftColumn paginater
            $perPage = 20;
            $curPage = (int) $this->_getParam('page');

            $start = 0;
            if ($curPage > 0) {
                $start = ($curPage - 1) * $perPage;
            }

            $listArticleOfTopic = $articleTbl->findByTopicId($topicId, $start, $perPage);
            $totalArticleOfTopic = $articleTbl->getTotalArticleByTopic($topicId);
            if ($totalArticleOfTopic >= $perPage) {
                $paginator = Zend_Paginator::factory((int) $totalArticleOfTopic);
                $paginator->setItemCountPerPage($perPage);
                $paginator->setCurrentPageNumber($curPage);
                $this->view->paginator = $paginator;
            }
            $this->view->listArticleOfTopic = $listArticleOfTopic;
            $this->view->article = $article;
            $this->view->relativeArticles = $relativeArticles;
            $this->view->listRelativeArticle = $listRelativeArticle;
        }
        $this->view->topicInfo = $topicTbl->findById($topicId);
        $this->view->params = $this->_getAllParams();
    }

    public function insertAction()
    {
        $message = array();
        $insertTokenNamespace = new Zend_Session_Namespace("INSERT_TOKEN");
        $topicId = $this->_getParam("tpid");
       
        if ($this->_getParam('submit')) {
            if ($topicId) {
                //Check is topic belongs to this user
                $topicTbl = new VC_DbTable_Store_Topic();
                $isBelongThisUser = $topicTbl->checkRecordExistMultiCond(array('id' => $topicId, 'user_id' => $this->userId));
                if (!$isBelongThisUser) {
                    throw new Zend_Exception("This topic does not belong you");
                }
                
                if ($this->_getParam('title') && $this->_getParam('content')) {
                    $insertData = array();
                    $insertData['title'] = $this->_getParam('title');
                    $insertData['content'] = $this->_getParam('content');
                    $insertData['root_link'] = $this->_getParam('root_link');
                    $insertData['topic_id'] = $topicId;
                    $insertData['user_id'] = $this->userId;
                    $insertData['post_date'] = date("Y-m-d");

                    $articleTbl = new VC_DbTable_Store_Article();
                    $articleId  = $articleTbl->insert($insertData);

                    //Move files from upload tmp to file
                    $fileBus = new VC_Business_File();
                    $moveFile = $fileBus->moveTmpFileToFile($this->userId, $insertTokenNamespace->insertToken, $articleId);

                    unset($insertTokenNamespace->insertToken);
                    unset($insertTokenNamespace);
                    
                    $this->_redirect("article/view/?tpid=" . $topicId);
                } else {
                    if (! $this->_getParam('title')) {
                        $message[] = "You have to input title";
                    }
                    if (! $this->_getParam('content')) {
                        $message[] = "You have to input content";
                    }
                }
                //$this->view->topicInfo = $topicTbl->findById($topicId);
            } else {
                $message[] = "You have to choose topic";
            }
            
        } else {
            //Create insert token
            $time = time();
            $insertTokenNamespace->insertToken = $time;
            $this->view->insertToken = $time;
        }

        $menuObj = new VC_Business_MenuFactory();
        $groupAndTopic = $menuObj->getGroupsAndTopicsOfUser($this->userId);
        //echo "<pre>"; var_dump($groupAndTopic); echo "</pre>"; die;
        $this->view->groupAndTopic = $groupAndTopic;
        $this->view->data = $this->_getAllParams();
        $this->view->message = $message;

        $this->view->insertToken = $insertTokenNamespace->insertToken;
        //Get all temp file uploaded of this article
        $uploadTmpTbl = new VC_DbTable_Common("upload_tmp", "id");
        $this->view->listUploadFiles = $uploadTmpTbl->fetchAll("user_id = " . $this->userId . " AND insert_token = '" . $insertTokenNamespace->insertToken . "'");
    }

    public function editAction()
    {
        $articleId = (int) $this->_getParam('id');
        if ($articleId == 0) {
            throw new VC_Exception("Invalid article delete information");
        }
        $insertTokenNamespace = new Zend_Session_Namespace("INSERT_TOKEN");
        
        $message = "";
        //Check if this article belong with this user
        $articleTbl = new VC_DbTable_Store_Article();
        $article = $articleTbl->findByIdAndUserId($articleId, $this->userId);
        if ($article) {

            if ($this->_getParam('submit')) {
                if ($this->_getParam('title') && $this->_getParam('content')
                        && $this->_getParam('tpid')) {
                    $updateData = array();
                    $updateData['title'] = $this->_getParam('title');
                    $updateData['content'] = $this->_getParam('content');
                    $updateData['root_link'] = $this->_getParam('root_link');
                    $updateData['topic_id'] = $this->_getParam('tpid');

                    $articleTbl->update($updateData, "id = " . $articleId);

                    $this->_redirect("article/view/?tpid=" . $article->topic_id . "&id=" . $articleId);
                } else {
                    $message = "Bạn phải nhập đầy đủ các phần có dấu  sao (*)";
                }
            }

            $menuObj = new VC_Business_MenuFactory();
            $groupAndTopic = $menuObj->getGroupsAndTopicsOfUser($this->userId);
            //echo "<pre>"; var_dump($groupAndTopic); echo "</pre>"; die;
            $this->view->groupAndTopic = $groupAndTopic;
            $this->view->message = $message;
            $this->view->article = $article;
            $this->view->insertToken = $insertTokenNamespace->insertToken;
            //Get all temp file uploaded of this article
            $uploadTmpTbl = new VC_DbTable_Common("upload_tmp", "id");
            $this->view->listUploadFiles = $uploadTmpTbl->fetchAll("user_id = " . $this->userId . " AND insert_token = '" . $insertTokenNamespace->insertToken . "'");

        } else {
            throw new VC_Exception("This article not belong with you");
        }
    }

    public function deleteAction()
    {
        $articleId = (int) $this->_getParam('id');
        if ($articleId == 0) {
            throw new VC_Exception("Invalid article delete information");
        }
        //Check if this article belong with this user
        $articleTbl = new VC_DbTable_Store_Article();
        $article = $articleTbl->findByIdAndUserId($articleId, $this->userId);
        if ($article) {
            //Delete
            $articleTbl->delete("id = " . $articleId);
            $this->_redirect("article/view/?tpid=" . $this->_getParam("tpid"));
        } else {
            throw new VC_Exception("This article not belong with you");
        }
    }

}
