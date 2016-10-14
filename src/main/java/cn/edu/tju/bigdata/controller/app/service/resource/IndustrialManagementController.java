package cn.edu.tju.bigdata.controller.app.service.resource;

import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.entity.RiskFormMap;
import cn.edu.tju.bigdata.mapper.DatasetMapper;
import cn.edu.tju.bigdata.mapper.IndustryMapper;
import cn.edu.tju.bigdata.plugin.PageView;
import cn.edu.tju.bigdata.util.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by iems706 on 2016/10/14.
 */
@Controller
@RequestMapping("/idustryManage")
public class IndustrialManagementController  extends BaseController {
    @Autowired
    IndustryMapper industryMapper;
    @RequestMapping("/list")
    public String manage(Model model) throws Exception {
        model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/system/industry/list";
    }

    @ResponseBody
    @RequestMapping("findByPage")
    public PageView findByPage( String pageNow,
                                String pageSize,String column,String sort) throws Exception {
        RiskFormMap riskFormMap = getFormMap(RiskFormMap.class);
        riskFormMap=toFormMap(riskFormMap, pageNow, pageSize, riskFormMap.getStr("orderby"));
        riskFormMap.put("column", column);
        riskFormMap.put("sort", sort);
//        pageView.setRecords(industryMapper.findRiskPage(riskFormMap));//不调用默认分页,调用自已的mapper中findUserPage
        pageView.setRecords(industryMapper.findByPage(riskFormMap));//调用默认分页
        return pageView;
    }

}
