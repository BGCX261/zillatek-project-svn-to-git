<?php

/**
 * Description of Search
 *
 * @author Vu Manh Cuong
 */
class VC_Business_Search
{

    private function parseKeyword($keyword)
    {
        return explode(" ", $keyword);
    }

    public function searchProcess($userId, $keyword, $options = array(), $cond = array())
    {
        if ($userId && $keyword) {
            $arrayWord = $this->parseKeyword($keyword);
            $articleTable = new VC_DbTable_Store_Article();
            $sql = "SELECT  SQL_CALC_FOUND_ROWS sa.title, sa.content, sa.id FROM store_article AS sa";
            $where = " WHERE user_id = {$userId} AND (";
            foreach ($arrayWord as $word) {
                $where .= " sa.`title` LIKE '%" . $word . "%' OR sa.`content` LIKE '%" . $word . "%' OR";
            }
            $where = rtrim($where, "OR");
            $where .= ")";
            
            if (sizeof($cond) > 0) {
                foreach ($cond as $field=>$value) {
                    $where .= " AND sa." .$field . " = '" .$value . "'";
                }
            }

            $sql .= $where;
            $sql .= " ORDER BY sa.id DESC";
            $sql .= " LIMIT ". $options['offset'] . "," . $options['count'];
            $db = $articleTable->getAdapter();
            $result['list'] = $db->query($sql)->fetchAll();

            $result['numFound'] = $db->query("SELECT FOUND_ROWS() as numFound")->fetchColumn();
            return $result;
        }
        return null;
    }

}
