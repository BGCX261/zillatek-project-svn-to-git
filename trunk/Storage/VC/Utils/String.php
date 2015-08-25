<?php

class VC_Utils_String
{

    public static  function generateCode($num_char = 6)
    {

        $possible = 'abcdefghijklmnpqrstvwxyz';
        $code = '';

        for ($i = 0; $i < $num_char; $i++) {
            $code .= substr($possible, mt_rand(0, strlen($possible) - 1), 1);
        }

        return $code;
    }

}