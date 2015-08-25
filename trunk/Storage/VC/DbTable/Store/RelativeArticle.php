<?php

/**
 * Description of RelativeArticle
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Store_RelativeArticle extends VC_DB
{

    protected $_name = 'store_relative_article';
    protected $_primary = "id";

    public function findRelativeArticleId($articleId)
    {
        $query = $this->select()->where("article_ids LIKE '%". $articleId.",%'");
        return $this->fetchRow($query);
    }
}
