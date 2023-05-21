package com.zcl.util.general.util;


import com.zcl.util.general.exception.ZfException;
import org.apache.commons.collections4.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@SuppressWarnings("unchecked")
public final class BeanUtil extends org.springframework.beans.BeanUtils {
    private BeanUtil() {
    }

    public interface Callback<T, R> {

        
        void doCallback(T source, R targetClass);

    }

    public static <T, R> R convert(T source, Class<R> targetClass, Callback callback, String... ignoreProperties) {
        if (source == null) {
            return null;
        } else {
            R target = null;

            try {
                target = targetClass.newInstance();
            } catch (IllegalAccessException | InstantiationException var4) {
                throw new ZfException("bean转换异常");
            }

            copyProperties(source, target, ignoreProperties);

            if(callback != null){
                callback.doCallback(source, target);
            }

            return target;
        }
    }

    public static <T, R> R convert(T source, Class<R> targetClass, Callback callback) {
        return convert(source, targetClass, callback, (String[]) null);
    }

    public static <T, R> R convert(T source, Class<R> targetClass, String... ignoreProperties) {
        return convert(source, targetClass, null, ignoreProperties);
    }

    public static <T, R> R convert(T source, Class<R> targetClass) {
        return convert(source, targetClass, null, (String[]) null);
    }

    public static <T, R> List<R> convertList(Collection<T> list, Class<R> targetType, Callback callback, String... ignoreProperties) {
        if (CollectionUtils.isEmpty(list)) {
            return new ArrayList<>();
        } else {
            List newList = new ArrayList(list.size());
            list.forEach(item -> newList.add(convert(item, targetType, callback, ignoreProperties)));
            return newList;
        }
    }

    public static <T, R> List<R> convertList(Collection<T> list, Class<R> targetType, String... ignoreProperties) {
        return convertList(list, targetType, null, ignoreProperties);
    }

    public static <T, R> List<R> convertList(Collection<T> list, Class<R> targetType, Callback callback) {
        return convertList(list, targetType, callback, (String[]) null);
    }

    public static <T, R> List<R> convertList(Collection<T> list, Class<R> targetType) {
        return convertList(list, targetType, null, (String[]) null);
    }

}
