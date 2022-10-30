package com.l1yp.model.param.modeling.field;

import com.l1yp.model.db.modeling.ModelingField.FieldModule;
import com.l1yp.model.db.modeling.ModelingField.FieldScope;

public class ModelingFieldFindParam {

    /**
     * 查询公共字段或默认字段只需要传这个
     */
    private FieldScope scope;

    /**
     * 查询业务实体或流程字段列表 需要传以下2个
     */

    private FieldModule module;

    private String mkey;

    public FieldModule getModule() {
        return module;
    }

    public void setModule(FieldModule module) {
        this.module = module;
    }

    public FieldScope getScope() {
        return scope;
    }

    public void setScope(FieldScope scope) {
        this.scope = scope;
    }

    public String getMkey() {
        return mkey;
    }

    public void setMkey(String mkey) {
        this.mkey = mkey;
    }

}
