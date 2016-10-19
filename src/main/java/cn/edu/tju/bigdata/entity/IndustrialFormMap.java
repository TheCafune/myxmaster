package cn.edu.tju.bigdata.entity;

import cn.edu.tju.bigdata.annotation.TableSeg;
import cn.edu.tju.bigdata.util.FormMap;

/**
 * Created by iems706 on 2016/10/18.
 */
@TableSeg(tableName = "ly_industry",id="EnterpriseID")
public class IndustrialFormMap extends FormMap<String, Object> {
    private static final long serialVersionUID = 1L;
}
