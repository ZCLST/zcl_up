package com.zcl.basic.job;

import com.xxl.job.core.context.XxlJobHelper;
import com.xxl.job.core.handler.annotation.XxlJob;
import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.redisqueue.biz.RedisQueueBiz;
import com.zcl.basic.redisqueue.model.RedisQueue;
import com.zcl.basic.sys.biz.SysParamBiz;
import com.zcl.basic.sys.model.SysParam;
import com.zcl.util.general.enums.ActionTypeEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

/**
 * XxlJob开发示例（Bean模式）
 *
 * 开发步骤：
 *      1、任务开发：在Spring Bean实例中，开发Job方法；
 *      2、注解配置：为Job方法添加注解 "@XxlJob(value="自定义jobhandler名称", init = "JobHandler初始化方法", destroy = "JobHandler销毁方法")"，注解value值对应的是调度中心新建任务的JobHandler属性的值。
 *      3、执行日志：需要通过 "XxlJobHelper.log" 打印执行日志；
 *      4、任务结果：默认任务结果为 "成功" 状态，不需要主动设置；如有诉求，比如设置任务结果为失败，可以通过 "XxlJobHelper.handleFail/handleSuccess" 自主设置任务结果；
 *
 * @author xuxueli 2019-12-11 21:52:51
 */
@Component
public class BasicXxlJob {
    private static Logger logger = LoggerFactory.getLogger(BasicXxlJob.class);
    private static final String REDIS_HANDLE_NUM_CODE="redis_queue_handle_num";
    private ProductBiz productBiz;
    private RedisQueueBiz redisQueueBiz;
    private SysParamBiz sysParamBiz;

    public BasicXxlJob(ProductBiz productBiz, RedisQueueBiz redisQueueBiz, SysParamBiz sysParamBiz) {
        this.productBiz = productBiz;
        this.redisQueueBiz = redisQueueBiz;
        this.sysParamBiz = sysParamBiz;
    }

    /**
     * 处理redis消息队列表
     */
    @XxlJob("handleRedisQueueJobHandler")
    public void handleRedisQueueJobHandler() throws Exception {
        synchronized(this){
//            SysParam param=sysParamBiz.findParamValueByCode(REDIS_HANDLE_NUM_CODE);
//            String value = param.getValue();
//            //todo 查出要处理的数据
//            List<RedisQueue> redisQueues =redisQueueBiz.selectRedisQueueByNum(value);
//            redisQueues.stream().forEach(redisQueue -> {
//                String actionType = redisQueue.getActionType();
//                ActionTypeEnum typeEnum = ActionTypeEnum.getByCode(actionType);
//                //todo 单个处理，判断类型
//                switch (typeEnum){
//                    case PRODUCT_ACTION:
//                        productBiz.handleRedisQueue();
//                        break;
//                }
//            });
        }
    }


    public void init(){
        logger.info("init");
    }
    public void destroy(){
        logger.info("destroy");
    }


}
