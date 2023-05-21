package com.zcl.util.general.util;

import org.apache.commons.codec.binary.Base64;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class MD5Util {
    
    public static String EncoderByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {

        MessageDigest md5 = MessageDigest.getInstance("MD5");

        String newStr = Base64.encodeBase64String(md5.digest(str.getBytes("utf-8")));
        return newStr;
    }

    
    public static boolean checkPassword(String newPasswd, String oldPasswd) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (EncoderByMd5(newPasswd).equals(oldPasswd))
            return true;
        else
            return false;
    }
}
