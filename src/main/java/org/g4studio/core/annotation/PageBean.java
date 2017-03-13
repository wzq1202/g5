package org.g4studio.core.annotation;

import java.lang.annotation.*;

/**
 * Created by qiang on 2017/3/7.
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface PageBean {
    Class type();
    String name();
    String field();
}
