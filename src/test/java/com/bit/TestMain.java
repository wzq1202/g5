package com.bit;

import com.bit.model.Purchase;
import com.bit.model.PurchaseGoods;
import org.g4studio.core.resource.util.MD5;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Base64;

/**
 * Created by qiang on 2017/3/17.
 */
public class TestMain {
    public static void main(String[] args){
//        cls2ExtJsonReader(PurchaseGoods.class);
//        System.out.println("===================================");
//        cls2ExtColume(PurchaseGoods.class);
//        System.out.println("===================================");
//        cls2ExtForm(Purchase.class);
        //Form 赋值
//        cls2FormSetValue(Purchase.class);
    }

    static void cls2ExtJsonReader(Class cls) {
        String temp = "{name:'{}'},";
        foreach(cls,temp);
    }

    static void cls2ExtColume (Class cls) {
        String temp = "{\n" +
                "header: '',\n" +
                "sortable: true,\n" +
                "dataIndex: '{}',\n" +
                "width: 80},";
        foreach(cls,temp);
    }

    static void cls2ExtForm (Class cls) {
        String temp = "{\n" +
                "xtype: 'textfield',\n" +
                "id: '{}',\n" +
                "name: '{}',\n" +
                "fieldLabel: '',\n" +
                "allowBlank: false\n" +
                "},";
        foreach(cls,temp);

    }

    static  void cls2FormSetValue(Class cls) {
        String temp = "Ext.getCmp('{}').setValue(res.data.{});";
        foreach(cls,temp);
    }
    static void foreach(final Class cls,final String temp) {
        Field[] fields = cls.getDeclaredFields();
        for (Field f : fields) {
            String str = temp.replace("{}",f.getName());
            System.out.println(str);
        }
    }
}
