package com.bit.web;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.service.IAttrService;
import com.bit.service.IPurchaseService;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/approve")
public class ApproveController {
    @RequestMapping("/purchase/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/approve_purchase");
        return mav;
    }
}
