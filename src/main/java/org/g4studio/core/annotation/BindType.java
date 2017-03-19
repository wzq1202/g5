package org.g4studio.core.annotation;

import java.lang.annotation.*;

/**
 * Created by qiang on 2017/3/17.
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface BindType {
    Class type();
    String name();
}
