package com.zcl.util.general.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


public abstract class JwtUtil {
    
    private static final String JWT_SEC="E4791AB6F7FF4EAEB33F3E16613D5E9F*jdk&gJw%tE#ncry^p1";
    
    public static final Integer TTL_MILLIS=2*60*60*1000;
    
    public static String createJWT(String userId) {

        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;


        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);


        Map<String, Object> claims = new HashMap<String, Object>();
        claims.put("userId", userId);



        JwtBuilder builder = Jwts.builder()

                .setClaims(claims)

                .setId(UUID.randomUUID().toString())

                .setIssuedAt(now)

                .setSubject(userId)

                .signWith(signatureAlgorithm, JWT_SEC.getBytes(StandardCharsets.UTF_8));
        if (TTL_MILLIS >= 0) {
            long expMillis = nowMillis + TTL_MILLIS;
            Date exp = new Date(expMillis);

            builder.setExpiration(exp);
        }
        return builder.compact();
    }


    
    public static Claims parseJWT(String token) {

        Claims claims = Jwts.parser()

                .setSigningKey(JWT_SEC.getBytes(StandardCharsets.UTF_8))

                .parseClaimsJws(token).getBody();
        return claims;
    }

}