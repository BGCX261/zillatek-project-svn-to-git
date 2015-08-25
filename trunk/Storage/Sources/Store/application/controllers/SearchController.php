<?php

class SearchController extends Store_Controller
{

    public function init()
    {
        parent::init();
        if ($this->userId == 0) {
            $this->_redirect("login/index");
        }
    }
    public function indexAction()
    {

    }

    public function doSearchAction()
    {
        
        $keyword = $this->_getParam("keyword");
        if ($keyword) { 
            $perPage = 20;
            $curPage = (int) $this->_getParam('page');

            $start = 0;
            if ($curPage > 0) {
                $start = ($curPage - 1) * $perPage;
            }
            $searchObj = new VC_Business_Search();
            $result = $searchObj->searchProcess($this->userId, $keyword, array('count'=>$perPage, 'offset'=>$start));
            //var_dump($result);die;
            $result['numFound'] = (int) $result['numFound'];
            if ($result['numFound'] > $perPage) {
                $paginator = Zend_Paginator::factory($result['numFound']);
                $paginator->setItemCountPerPage($perPage);
                $paginator->setCurrentPageNumber($curPage);
                $this->view->paginator = $paginator;
            }
            $this->view->listArticle = $result['list'];
            $this->view->keyword = $keyword;
        } else {
            return $this->render("index");
        }
    }

}
