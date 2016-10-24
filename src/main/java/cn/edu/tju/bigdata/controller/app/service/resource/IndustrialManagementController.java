package cn.edu.tju.bigdata.controller.app.service.resource;

import cn.edu.tju.bigdata.annotation.SystemLog;
import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.entity.*;
import cn.edu.tju.bigdata.exception.SystemException;
import cn.edu.tju.bigdata.mapper.DatasetMapper;
import cn.edu.tju.bigdata.mapper.IndustryMapper;
import cn.edu.tju.bigdata.plugin.PageView;
import cn.edu.tju.bigdata.util.Common;
import cn.edu.tju.bigdata.util.JsonUtils;
import cn.edu.tju.bigdata.util.POIUtils;
import cn.edu.tju.bigdata.util.PasswordHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
    @RequestMapping("/findByPage")
    public PageView findByPage( String pageNow,
                                String pageSize,String column,String sort) throws Exception {
        IndustrialFormMap industrialFormMap = getFormMap(IndustrialFormMap.class);
        industrialFormMap=toFormMap(industrialFormMap, pageNow, pageSize, industrialFormMap.getStr("orderby"));
        industrialFormMap.put("column", column);
        industrialFormMap.put("sort", sort);

        pageView.setRecords(industryMapper.findIndustryPage(industrialFormMap));//不调用默认分页,调用自已的mapper中findUserPage
//        pageView.setRecords(industryMapper.findByPage(industrialFormMap));//调用默认分页
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

    @RequestMapping("/addIndustry")
    public String addIndustry(Model model) throws Exception {
        return Common.BACKGROUND_PATH + "/system/industry/add";
    }

    @ResponseBody
    @RequestMapping("/addEntity")
    @SystemLog(module="企业管理",methods="企业管理-新增企业")//凡需要处理业务逻辑的.都需要记录操作日志
    @Transactional(readOnly=false)//需要事务操作必须加入此注解
    public String addEntity(){
        try {
            IndustrialFormMap industrialFormMap = getFormMap(IndustrialFormMap.class);


            industryMapper.addEntity(industrialFormMap);//新增后返回新增信息

        } catch (Exception e) {
            throw new SystemException("添加企业异常");
        }
        return "success";
    }

    @RequestMapping("/editIndustry")
    public String editUI(Model model) throws Exception {
        String id = getPara("id");
//        System.out.println("EnterpriseID::::::::::::::::::::::::::" + id);
        if(Common.isNotEmpty(id)){
//            model.addAttribute("industry", industryMapper.findbyFrist("id", id+"", IndustrialFormMap.class));
            model.addAttribute("industry", industryMapper.findbyFrist("EnterpriseID", id, IndustrialFormMap.class));
        }
        return Common.BACKGROUND_PATH + "/system/industry/edit";
    }

    @ResponseBody
    @RequestMapping("/editEntity")
    @Transactional(readOnly=false)//需要事务操作必须加入此注解
    @SystemLog(module="企业管理",methods="企业管理-修改企业")//凡需要处理业务逻辑的.都需要记录操作日志
    public String editEntity() throws Exception {
        IndustrialFormMap industrialFormMap = getFormMap(IndustrialFormMap.class);
//        System.out.println("industrialFormMap.get(\"EnterpriseID\"):::++++++++++++++++++++++++++++++++++++" + industrialFormMap.get("EnterpriseID"));
        String id = (String)industrialFormMap.get("EnterpriseID");
        industryMapper.deleteByAttribute("EnterpriseID", industrialFormMap.get("EnterpriseID")+"", IndustrialFormMap.class);

        industrialFormMap.put("EnterpriseID",id);
        industryMapper.addEntity(industrialFormMap);

        return "success";
    }

    @ResponseBody
    @RequestMapping("/deleIndustry")
    @Transactional(readOnly=false)//需要事务操作必须加入此注解
    @SystemLog(module="企业管理",methods="企业管理-删除企业")//凡需要处理业务逻辑的.都需要记录操作日志
    public String deleteEntity() throws Exception {
        String[] ids = getParaValues("ids");
        for (String id : ids) {
            industryMapper.deleteByAttribute("EnterpriseID", id, IndustrialFormMap.class);
        }
        return "success";
    }
}
