package zuul.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;

/**

 * @author  zcl

 * @create  2021/6/20 21:13

 * @desc 登录过滤器

 **/
@Component
public class LoginFilter extends ZuulFilter {
    /**
     * 设置过滤器类型
     * 1、pre 请求之前执行
     * 2、routing 路由之前执行
     * 3、post 路由之后拿到响应结果执行
     * 4、error 异常执行
     * @return
     */
    @Override
    public String filterType() {
        return "pre";
    }

    /**
     * 指定过滤器的优先级
     * @return
     */
    @Override
    public int filterOrder() {
        return 1;
    }

    /**
     * 当前过滤器是否生效
     * @return
     */
    @Override
    public boolean shouldFilter() {
        return true;//true使用
    }

    /**
     * 执行过滤器中的业务
     * 登录验证
     * 1、根据RequestContext上下文对象获取请求中的asscesstoken
     * 2、判断token是否为空 为空就拦截返回错误信息，否则放行
     * @return
     * @throws
     */
    @Override
    public Object run() throws ZuulException {


        return null;//返回Null就是放行
    }

}
