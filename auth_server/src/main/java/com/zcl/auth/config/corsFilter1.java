package com.zcl.auth.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class corsFilter1 implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")  // 匹配所有的路径
                .allowCredentials(true) // 设置允许凭证
                .allowedHeaders("*")   // 设置请求头
                .allowedMethods("GET","POST","PUT","DELETE") // 设置允许的方式
                .allowedOrigins("*");
    }
}