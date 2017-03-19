package org.g4studio.core.resolver;

import org.apache.commons.lang.StringUtils;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.BeanUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;

/**
 * Created by qiang on 2017/3/7.
 */
public class BindTypeArgumentResolver implements HandlerMethodArgumentResolver {
    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(BindType.class);
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
        Class cls = parameter.getParameterType();
        BindType bindTypeAnno = parameter.getParameterAnnotation(BindType.class);
        //标注属性类型
        Class fileType = bindTypeAnno.type();
        //标注属性名称
        String fieldName = bindTypeAnno.name();
        Iterator<String> parameterNames = webRequest.getParameterNames();
        Object root = BeanUtils.instantiate(cls);
        while (parameterNames.hasNext()) {
            String k = parameterNames.next();
            String v = webRequest.getParameter(k);
            String[] k_arr = k.split("\\.");
            try {
                this.doBind(root,k_arr,0,v,fileType,fieldName);
            } catch (IllegalArgumentException | IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }

        }
        return root;
    }
    /**
     * 设置属性值
     * @param
     * @param val
     */
    private void doBind(Object obj,String[] attrs,int idx,Object val,Class bindType,String typName) throws IllegalArgumentException,IllegalAccessException,InvocationTargetException {
        Field field = this.getField(obj.getClass(),attrs[idx]);
        if (field != null) {
            field.setAccessible(true);
            Object fieldObj = field.get(obj);
            if (idx < attrs.length - 1) {
                if (fieldObj == null) {
                    //实例化属性
                    Class field_type = attrs[idx].equals(typName) ? bindType : field.getType();
                    fieldObj = BeanUtils.instantiate(field_type);
                }
                org.apache.commons.beanutils.BeanUtils.setProperty(obj,attrs[idx],fieldObj);
                doBind(fieldObj,attrs,++idx,val,null,null);
            } else { //赋值
                if (val != null && !"".equals(val)) {
                    org.apache.commons.beanutils.BeanUtils.setProperty(obj,attrs[idx], val);
                }
            }

        }
    }
    /**
     *
     * 是否包含属性
     * @param cls
     * @param fieldName 属性名称
     * @return
     */
    private  boolean hasField(Class cls,String fieldName) {
        return this.getField(cls,fieldName) != null;
    }

    /**
     * 获取属性
     * @param cls
     * @param fieldName
     * @return
     */
    private Field getField(Class cls,String fieldName) {
        Field field = null;
        try {
            field = cls.getDeclaredField(fieldName);
        } catch (NoSuchFieldException e) {

        }
        return field;
    }




}
