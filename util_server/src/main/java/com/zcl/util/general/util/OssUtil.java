package com.zcl.util.general.util;
/**
 * @author zcl
 * @create 2022/1/22 10:42
 * @desc OSS工具类
 **/

import com.aliyun.oss.ClientBuilderConfiguration;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.PutObjectRequest;
import com.zcl.util.general.exception.ZfException;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.unit.DataUnit;

import java.io.InputStream;
import java.util.UUID;

/**
 * @author 曾小白
 * @create 2021/12/6 15:41
 * @desc OSS客户端工具类
 **/
@Slf4j
public abstract class OssUtil {
    public static final String HEADER="http://zcl-test123.oss-cn-beijing.aliyuncs.com/";

    private volatile static OSS ossClient;
    // Endpoint以杭州为例，其它Region请按实际情况填写。
    private static final String END_POINT = "oss-cn-beijing.aliyuncs.com";
    // 阿里云主账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM账号进行API访问或日常运维，请登录RAM控制台创建RAM账号。
    private static final String ACCESS_KEY_ID = "LTAI5tE1Fa4b74WEFj7UwUE2";
    //"<yourAccessKeySecret>"
    private static final String ACCESS_KEY_SECRET = "DSAWb7iKnYaZNDA6fIQ1uaBXUXuueH";
    //OSS 储存空间 bucket名字 "<yourBucketName>"
    private static final String BUCKET_NAME = "zcl-test123";

    /**
     * 从连接池获取ossclient
     *
     * @return
     * @throws OSSException
     */
    public static OSS getOssClient() {
        if (ossClient == null) {
            // 创建ClientConfiguration实例，按照您的需要修改默认参数。
            ClientBuilderConfiguration conf = new ClientBuilderConfiguration();
            // 设置OSSClient允许打开的最大HTTP连接数，默认为1024个。
            conf.setMaxConnections(200);
            // 设置Socket层传输数据的超时时间，默认为50000毫秒。
            conf.setSocketTimeout(10000);
            // 设置建立连接的超时时间，默认为50000毫秒。
            conf.setConnectionTimeout(10000);
            // 设置从连接池中获取连接的超时时间（单位：毫秒），默认不超时。
            conf.setConnectionRequestTimeout(1000);
            // 设置连接空闲超时时间。超时则关闭连接，默认为60000毫秒。
            conf.setIdleConnectionTime(10000);
            try {
                ossClient = new OSSClientBuilder().build(END_POINT, ACCESS_KEY_ID, ACCESS_KEY_SECRET, conf);
            } catch (OSSException e) {
                log.error(e.getMessage(), e);
                throw new OSSException(e.getMessage(), e);
            }
        }
        return ossClient;
    }

    /**
     * 上传文件
     *
     * @param objectName  表示上传文件到OSS时需要指定包含文件后缀在内的完整路径，例如abc/efg/123.jpg。
     * @param inputStream
     * @return
     */
    public static void upload(String objectName, InputStream inputStream) throws OSSException {

        if (StringUtils.isBlank(objectName)) {
            log.error("上传文件名或内容不能为null!");
            throw new ZfException("上传文件名或内容不能为null!");
        }
        try {
            // 创建PutObjectRequest对象。
            PutObjectRequest putObjectRequest = new PutObjectRequest(BUCKET_NAME, objectName, inputStream);
            // 上传文件。
            getOssClient().putObject(putObjectRequest);
            log.info("-------------------------上传成功--------------------");
        } catch (OSSException e) {
            log.error(objectName + "oos上传文件失败" + e.getMessage(), e);
            throw new OSSException(objectName + "oos上传文件失败" + e.getMessage(), e);
        }
    }

    /**
     * 获取文件上传路径 用户ID/
     * @return
     * @param fileName 文件全名称
     */
    public static String getFilePath(String fileName) {
        String userId = ContextUtils.getUserId();
        String time = DateUtils.getNowTime().replaceAll("-", "").substring(0, 8);
        StringBuffer buffer = new StringBuffer();
        buffer.append(userId + "/");
        buffer.append(time + "/");
        buffer.append(fileName);
        return buffer.toString().trim();
    }
}