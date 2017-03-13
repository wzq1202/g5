package org.g4studio.core.resolver;

import org.codehaus.jackson.map.util.BeanUtil;
import org.g4studio.core.annotation.PageBean;
import org.springframework.beans.BeanUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.lang.reflect.Field;
import java.util.Iterator;

/**
 * Created by qiang on 2017/3/7.
 */
public class PageBeanArgumentResolver implements HandlerMethodArgumentResolver {
    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(PageBean.class);
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
        Object pb = null;

        Class cls = parameter.getParameterType();

        PageBean fieldType = parameter.getParameterAnnotation(PageBean.class);
        Class type = fieldType.type();
        String field = fieldType.field();
        Iterator<String> ite = webRequest.getParameterNames();
        Object _b = null;
        while (ite.hasNext()) {
            String k = ite.next();
            String v = webRequest.getParameter(k);
            //包含点
            if (k.contains(".")) {
                String f = k.split("\\.")[0];
                String s = k.split("\\.")[1];
                //TODO 处理逻辑
                if (field.equals(f)) {
                    boolean _is = this.containField(type,s);
                    if (_is) {
                        if (pb == null) {
                            pb = BeanUtils.instantiate(cls);
                        }
                        //当前对象
                        if (_b == null) {
                            _b = type.newInstance();
                        }
                        Field _f = type.getDeclaredField(s);
                        //属性赋值
                        _f.setAccessible(true);
//                        _f.set(_b,v);
                        org.apache.commons.beanutils.BeanUtils.setProperty(_b,_f.getName(),v);

                        Field _pb_f = cls.getDeclaredField(field);
                        _pb_f.setAccessible(true);
                        org.apache.commons.beanutils.BeanUtils.setProperty(pb,_pb_f.getName(),_b);
                    }
                }
            } else { //不包含点
                boolean _is = this.containField(cls,k);
                if (_is) {
                    if (pb == null) {
                        pb = BeanUtils.instantiate(cls);
                    }
                    Field _f = cls.getDeclaredField(k);
                    _f.setAccessible(true);
                    org.apache.commons.beanutils.BeanUtils.setProperty(pb,_f.getName(),v);
                }
            }
        }
        return pb;
    }

    private  boolean containField(Class cls,String fieldName) {
        boolean flag = false;
        if (cls != null) {
            Field[] ff = cls.getDeclaredFields();
            for (Field f : ff) {
                if (f.getName().equals(fieldName)) {
                    flag = true;
                    break;
                }
            }
        }
        return flag;
    }
}
