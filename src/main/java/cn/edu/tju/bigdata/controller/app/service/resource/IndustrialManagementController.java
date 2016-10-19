package cn.edu.tju.bigdata.controller.app.service.resource;

import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.entity.IndustrialFormMap;
import cn.edu.tju.bigdata.entity.RiskFormMap;
import cn.edu.tju.bigdata.entity.UserFormMap;
import cn.edu.tju.bigdata.mapper.DatasetMapper;
import cn.edu.tju.bigdata.mapper.IndustryMapper;
import cn.edu.tju.bigdata.plugin.PageView;
import cn.edu.tju.bigdata.util.Common;
import cn.edu.tju.bigdata.util.JsonUtils;
import cn.edu.tju.bigdata.util.POIUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by iems706 on 2016/10/14.
 */
@Controller
@RequestMapping("/industry")
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
        IndustrialFormMap industrialFormMap = getFormMap(IndustrialFormMap.class);
        industrialFormMap=toFormMap(industrialFormMap, pageNow, pageSize, industrialFormMap.getStr("orderby"));
        industrialFormMap.put("column", column);
        industrialFormMap.put("sort", sort);

//        pageView.setRecords(industryMapper.findRiskPage(riskFormMap));//不调用默认分页,调用自已的mapper中findUserPage
        pageView.setRecords(industryMapper.findByPage(industrialFormMap));//调用默认分页
        return pageView;
    }

    @RequestMapping("/export")
    public void download(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String fileName = "企业信息";
        IndustrialFormMap industrialFormMap = findHasHMap(IndustrialFormMap.class);
        //exportData =
        // [{"colkey":"sql_info","name":"SQL语句","hide":false},
        // {"colkey":"total_time","name":"总响应时长","hide":false},
        // {"colkey":"avg_time","name":"平均响应时长","hide":false},
        // {"colkey":"record_time","name":"记录时间","hide":false},
        // {"colkey":"call_count","name":"请求次数","hide":false}
        // ]
        String exportData = industrialFormMap.getStr("exportData");// 列表头的json字符串

        List<Map<String, Object>> listMap = JsonUtils.parseJSONList(exportData);

        List<IndustrialFormMap> lis = industryMapper.findIndustryPage(industrialFormMap);
        POIUtils.exportToExcel(response, listMap, lis, fileName);
    }
}
