<?php

class UploadController extends Store_Controller
{

    public function indexAction()
    {
        if ($this->userId == 0) {
            throw new VC_Exception("You have not permission");
        }

        $invidualDir = 'u_' . $this->userId;
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();
        $uploadRootDir = ROOT_PATH . '/Sources/store/public/uploads';
        $uploadDir = $uploadRootDir . '/' . $invidualDir;
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777);
            copy($uploadRootDir . "/index.html", $uploadDir . "/index.html");
        }

        $error = "";
        $msg = "";

        $config = VC_Config::getConfig();
        $maxFileSize = 0;
        $valid = false;
        
        if (isset($config['file']['upload']['size']))
            $maxFileSize = $config['file']['upload']['size'];
        else {
            $error = "System error, please contact to administrator to resolve this problem, thank you very much";
        }
        
        $fileElementName = 'fileToUpload';

        $upload = new Zend_File_Transfer_Adapter_Http("http");

        $allowExt = explode(",", str_replace (" ", "", $config['file']['upload']['ext']));
        $upload->addValidator('Extension', true, $allowExt);
        $upload->addValidator('FilesSize', true,
                array('min' => '10B', 'max' => $maxFileSize));
        
        $upload->addValidator('Count', true, array('min' => 1, 'max' => 1));

        $messages = array();

        $files = $upload->getFileInfo();
        if ($upload->isValid() && $upload->isUploaded()) {
            
            reset($files);
            $fileInputName = key($files);

            //Get file extension
            $fileName = $files[$fileInputName]['name'];
            $ext = substr($fileName, strrpos($fileName, "."));
            
            $fileName = preg_replace("/[^a-z.0-9]/i", "", $_FILES[$fileInputName]['name']);
            $tempPath = $files[$fileInputName]['tmp_name'];
            $baseName = str_replace($ext, "", $fileName); //Name no ext
            
            if ("" == $fileName) {
                $fileName = time() . $ext;
            }

            if (file_exists($uploadDir . "/" . $fileName)) {
                $fileName = $baseName . "_" . time() . $ext;
            }

            if (move_uploaded_file($tempPath, $uploadDir . "/" . $fileName)) {
                $valid = true;
            } else {
                $error = "Could not upload file, please try again.";
            }
        }

        if ($valid) {
            //Save to upload_tmp in DB
            $uploadTmpTbl = new VC_DbTable_Common("upload_tmp", "id");
            $uploadTmpData = array();
            $uploadTmpData['file_name'] = $this->_getParam("file_name", $fileName);
            
            $uploadTmpData['user_id'] = $this->userId;
            $uploadTmpData['upload_date'] = date("Y-m-d");
            
            $insertTokenNamespace = new Zend_Session_Namespace("INSERT_TOKEN");
            $uploadTmpData['insert_token'] = $insertTokenNamespace->insertToken;
            
            $iconPath = VC_Business_File::getFileIcon($ext, '/uploads/' . $invidualDir . '/' . $fileName );
            $filePath = '/uploads/' . $invidualDir . '/' . $fileName;

            $uploadTmpData['icon_path'] = $iconPath;
            $uploadTmpData['file_path'] = $filePath;
            $uploadTmpTbl->insert($uploadTmpData);
            
            $result = array('error' => '', 'icon' => $iconPath, 'file' => $filePath, 'name' => $uploadTmpData['file_name']);
            echo Zend_Json_Encoder::encode($result, true);
        } else {
            $messages = $upload->getMessages();
            
            $result = array('error' => implode("\n", $messages) . "\n" . $error, 'file' => '') ;
            echo Zend_Json_Encoder::encode($result);
        }
    }

}
