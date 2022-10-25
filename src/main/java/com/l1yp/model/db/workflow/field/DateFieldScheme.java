package com.l1yp.model.db.workflow.field;

import com.fasterxml.jackson.databind.PropertyNamingStrategies.LowerCamelCaseStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

@JsonNaming(LowerCamelCaseStrategy.class)
public class DateFieldScheme extends FieldScheme {

    private DateType dateType;

    /**
     * 显示在 输入框中的格式
     */
    private String format;

    /**
     * 值格式
     */
    private String valueFormat;

    public DateType getDateType() {
        return dateType;
    }

    public void setDateType(DateType dateType) {
        this.dateType = dateType;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public String getValueFormat() {
        return valueFormat;
    }

    public void setValueFormat(String valueFormat) {
        this.valueFormat = valueFormat;
    }


    public enum DateType {
        year,
        month,
        date,
        datetime,
        week,
    }

}
