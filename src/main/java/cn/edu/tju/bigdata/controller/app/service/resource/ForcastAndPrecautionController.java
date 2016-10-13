package cn.edu.tju.bigdata.controller.app.service.resource;

import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.util.Common;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chc on 2016/10/9.
 */
@Controller
@RequestMapping("/forcast")
public class ForcastAndPrecautionController extends BaseController{

    @RequestMapping("/showAPage")
    public String showAPage(Model model) throws Exception {
//        model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/system/forcast/showAPage";
    }
    @RequestMapping("/risk_assessment_result")
    public String risk_assessment_result(Model model) throws Exception {
//        model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/system/forcast/risk_assessment_result";
    }
    @RequestMapping("/potential_hazard")
    public String potential_hazard(Model model) throws Exception {
//        model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/system/forcast/potential_hazard";
    }
}
