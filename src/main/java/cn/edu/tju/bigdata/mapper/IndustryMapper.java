package cn.edu.tju.bigdata.mapper;

import cn.edu.tju.bigdata.entity.IndustrialFormMap;
import cn.edu.tju.bigdata.mapper.base.BaseMapper;

import java.util.List;

/**
 * Created by iems706 on 2016/10/14.
 */
public interface IndustryMapper extends BaseMapper {

    public List<IndustrialFormMap> findIndustryPage(IndustrialFormMap industrialFormMap);
}
