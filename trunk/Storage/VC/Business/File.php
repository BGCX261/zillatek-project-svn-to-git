<?php

/**
 * Description of VC_Business_Common
 *
 * @author Vu Manh Cuong
 */
class VC_Business_File
{

    public static function getFileIcon($extension, $imagePath = "")
    {
        $iconUrl = "";
        switch ($extension) {
            case ".rar":
            case ".zip":
            case ".gz":
                $iconUrl =  "/themes/default/images/zip_icon.jpg";
                break;

            case ".jpg":
            case ".gif":
            case ".png":
                if ($imagePath) {
                    $iconUrl = $imagePath;
                } else {
                    $iconUrl =  "/themes/default/images/file_icon.jpg";
                }
                break;
            
            default:
                $iconUrl = "/themes/default/images/file_icon.jpg";
                break;
        }
        return $iconUrl;
    }

    public function moveTmpFileToFile($userId, $insertToken, $articleId)
    {
        $valid = false;
        if ($userId && $insertToken) {
            $uploadTmpTbl = new VC_DbTable_Common("upload_tmp", "id");
            $listTmpUploadFiles = $uploadTmpTbl->fetchAll("user_id = " . $userId . " AND insert_token = '" . $insertToken . "'");
            $fileTbl = new VC_DbTable_Common("store_file", "id");
            $articleFileTbl = new VC_DbTable_Common("store_article_file", "article_id");
            foreach ($listTmpUploadFiles as $tmpFile) {
                $fileData = array();
                $fileData['name'] = $tmpFile['file_name'];
                $fileData['file_name'] = $tmpFile['file_name'];
                $fileData['user_id'] = $userId;
                $fileData['file_path'] = $tmpFile['file_path'];
                $fileData['icon_path'] = $tmpFile['icon_path'];
                $fileData['upload_date'] = $tmpFile['upload_date'];
                $fileId = $fileTbl->insert($fileData);

                //Insert into article_file
                $articleFileTbl->insert(array('article_id' => $articleId, 'file_id' => $fileId, "user_id" => $userId));
            }

            //Remove old file
            $oldFileSql = "CURDATE() - INTERVAL 2 DAY >= upload_date";
            $allOldFile = $uploadTmpTbl->fetchAll($oldFileSql);
            foreach ($allOldFile as $oldFile) {
                @unlink(ROOT_PATH . '/Sources/store/public' . $oldFile->file_path);
            }
            //Remove all file by token and post time
            $delSql = "(user_id = " . $userId . " AND insert_token = '" . $insertToken . "') ";
            $delSql .= " OR CURDATE() - INTERVAL 2 DAY >= upload_date";
            $uploadTmpTbl->delete($delSql);
            //delete file in hdd
            
            $valid = true;
        }
        return $valid;
    }
}
