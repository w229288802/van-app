package com.l1yp.service.modeling.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.l1yp.exception.VanException;
import com.l1yp.mapper.modeling.ModelingOptionTypeMapper;
import com.l1yp.model.db.modeling.ModelingField;
import com.l1yp.model.db.modeling.ModelingOptionScope;
import com.l1yp.model.db.modeling.ModelingOptionType;
import com.l1yp.model.db.modeling.ModelingOptionValue;
import com.l1yp.model.param.modeling.option.ModelingOptionTypeAddParam;
import com.l1yp.model.param.modeling.option.ModelingOptionTypeFindParam;
import com.l1yp.model.param.modeling.option.ModelingOptionTypeUpdateParam;
import com.l1yp.model.view.modeling.ModelingOptionTypeView;
import com.l1yp.service.modeling.IModelingOptionTypeService;
import com.l1yp.util.BeanCopierUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ModelingOptionTypeServiceImpl extends ServiceImpl<ModelingOptionTypeMapper, ModelingOptionType> implements IModelingOptionTypeService {


    @Resource
    ModelingOptionValueServiceImpl workflowOptionValueService;

    @Override
    public List<ModelingOptionTypeView> findTypes(ModelingOptionTypeFindParam param) {
        LambdaQueryWrapper<ModelingOptionType> wrapper = Wrappers.lambdaQuery();
        wrapper.eq(ModelingOptionType::getScope, param.getScope());

        if (StringUtils.hasText(param.getMkey())) {
            wrapper.eq(ModelingOptionType::getMkey, param.getMkey());
        }
        List<ModelingOptionType> modelingOptionTypes = getBaseMapper().selectList(wrapper);
        return modelingOptionTypes.stream().map(ModelingOptionType::toView).toList();
    }

    @Override
    @Transactional
    public void addType(ModelingOptionTypeAddParam param) {
        ModelingOptionType modelingOptionType = new ModelingOptionType();
        BeanCopierUtil.copy(param, modelingOptionType);
        save(modelingOptionType);
    }

    @Override
    @Transactional
    public void updateType(ModelingOptionTypeUpdateParam param) {
        ModelingOptionType modelingOptionType = new ModelingOptionType();
        BeanCopierUtil.copy(param, modelingOptionType);
        updateById(modelingOptionType);
    }

    @Override
    public void deleteType(String id) {
        int count = getBaseMapper().countOfOptionFieldRef(id);
        if (count > 0) {
            List<ModelingField> workflowFieldDefs = getBaseMapper().selectOptionFieldRef(id);
            String strRefField = workflowFieldDefs.stream().map(it -> it.getLabel() + "(" + it.getField() + ")").collect(Collectors.joining("\n"));
            throw new VanException(500, "此数据源被以下字段引用: \n" + strRefField);
        }

        removeById(id);
        workflowOptionValueService.remove(Wrappers.<ModelingOptionValue>lambdaQuery().eq(ModelingOptionValue::getTypeId, id));

    }
}