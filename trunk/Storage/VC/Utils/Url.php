<?php

class VC_Utils_Url
{

    private $slash_sign = "::";

    public function postCURL($postParams)
    {

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $postParams['url']);
        curl_setopt($ch, CURLOPT_PORT, 80);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postParams);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);  // this line makes it work under https
        //connect to server, send request, receive response
        $result = curl_exec($ch);

        //end connection
        curl_close($ch);
    }

    public static function removeParam($selfUrl, $replace = "")
    {
        if ($replace) {
            $selfUrl .= "&";
            $startChar = "&";
            //if($replace == "city") echo $replace;
            $pot = strpos($selfUrl, "&" . $replace . "=");

            if (!$pot) {
                $pot = strpos($selfUrl, "?" . $replace . "=");
                $startChar = "?";
            }

            if ($pot) {
                // http://listing.bkh.local/index/search?cat_serv=may+moc
                $subStrFromPosToEnd = substr($selfUrl, $pot); //Get from  $pot to end
                //$subStrFromPosToEnd = &city=3095&

                $startStrToPos = substr($selfUrl, 0, $pot); //Get from http:// to $pos
                //$startStrToPos: http://listing.bkh.local/index/search?cat_serv=may+moc

                $resStr = str_replace($startChar . $replace . "=", "", $subStrFromPosToEnd);

                $resStr = substr($resStr, strpos($resStr, "&"));
                $finalString = $startStrToPos . $resStr;

                if ($startChar == "?") { //replace first & by ?
                    $finalString = preg_replace('/\&/', '?', $finalString, 1);
                }
                return $finalString;
            }
        }
        return $selfUrl;
    }

    public static function getHostName()
    {
        $s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : "";
        $protocol = self::strLeft(strtolower($_SERVER["SERVER_PROTOCOL"]), "/") . $s;

        $port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":" . $_SERVER["SERVER_PORT"]);
        //return $protocol."://".$_SERVER['SERVER_NAME'].$port.$_SERVER['REQUEST_URI'];
        return $protocol . "://" . $_SERVER['HTTP_HOST'];
    }

    public static function getSelfUrl($replace = array())
    {
        $selfUrl = self::getHostName() . $_SERVER['REQUEST_URI'];
        $selfUrl = rtrim($selfUrl, "&");
        if (sizeof($replace)) {
            array_push($replace, "page");
            foreach ($replace as $param) {
                $selfUrl = self::removeParam($selfUrl, $param);
            }
        }
        $selfUrl = rtrim($selfUrl, "&");
        if (strpos($selfUrl, "?") == false) {
            $selfUrl .= "?back=home";
        }
        return trim($selfUrl, "/");
    }

    public static function getSelfUri($encode = true)
    {
        return str_replace(BASE_URL, "", self::getSelfUrl());
//        if ($encode) {
//            return self::backUrlEncode($uri);
//        }
//        return $uri;
    }

    public static function strLeft($s1, $s2)
    {
        return substr($s1, 0, strpos($s1, $s2));
    }

}