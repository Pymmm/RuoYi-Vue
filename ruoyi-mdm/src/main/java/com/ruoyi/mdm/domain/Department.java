package com.ruoyi.mdm.domain;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.HeadFontStyle;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 部门管理对象 mdm_department
 *
 * @author Yiming Pu
 * @date 2025-03-20
 */
@ExcelIgnoreUnannotated // 在导出Excel时，忽略没有被任何注解标注的字段
@ColumnWidth(16) // 设置列的宽度
@HeadRowHeight(14) // 设置表头行的高度
@HeadFontStyle(fontHeightInPoints = 11) // 设置表头字体样式
@ApiModel(description = "部门管理对象")
public class Department extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 部门ID */
    @ApiModelProperty(value = "部门ID")
    private Long id;

    /** 部门编码 */
    @Excel(name = "部门编码")
    @ExcelProperty("组部门码")
    @ApiModelProperty(value = "部门编码")
    private String departmentCode;

    /** 组织编码 */
    @Excel(name = "组织编码")
    @ExcelProperty("组织编码")
    @ApiModelProperty(value = "组织编码")
    private String organizationCode;

    /** 组织名称 */
    @Excel(name = "组织名称")
    @ExcelProperty("组织名称")
    @ApiModelProperty(value = "组织名称")
    private String organizationName;

    /** 一级编码 */
    @Excel(name = "一级编码")
    @ExcelProperty("一级编码")
    @ApiModelProperty(value = "一级编码")
    private String unitCode;

    /** 一级单位 */
    @Excel(name = "一级单位")
    @ExcelProperty("一级单位")
    @ApiModelProperty(value = "一级单位")
    private String unitName;

    /** 二级编码 */
    @Excel(name = "二级编码")
    @ExcelProperty("二级编码")
    @ApiModelProperty(value = "二级编码")
    private String subUnitCode;

    /** 二级单位 */
    @Excel(name = "二级单位")
    @ExcelProperty("二级单位")
    @ApiModelProperty(value = "二级单位")
    private String subUnitName;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }

    public void setDepartmentCode(String departmentCode)
    {
        this.departmentCode = departmentCode;
    }

    public String getDepartmentCode()
    {
        return departmentCode;
    }

    public void setOrganizationCode(String organizationCode)
    {
        this.organizationCode = organizationCode;
    }

    public String getOrganizationCode()
    {
        return organizationCode;
    }

    public void setOrganizationName(String organizationName)
    {
        this.organizationName = organizationName;
    }

    public String getOrganizationName()
    {
        return organizationName;
    }

    public void setUnitCode(String unitCode)
    {
        this.unitCode = unitCode;
    }

    public String getUnitCode()
    {
        return unitCode;
    }

    public void setUnitName(String unitName)
    {
        this.unitName = unitName;
    }

    public String getUnitName()
    {
        return unitName;
    }

    public void setSubUnitCode(String subUnitCode)
    {
        this.subUnitCode = subUnitCode;
    }

    public String getSubUnitCode()
    {
        return subUnitCode;
    }

    public void setSubUnitName(String subUnitName)
    {
        this.subUnitName = subUnitName;
    }

    public String getSubUnitName()
    {
        return subUnitName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("departmentCode", getDepartmentCode())
                .append("organizationCode", getOrganizationCode())
                .append("organizationName", getOrganizationName())
                .append("unitCode", getUnitCode())
                .append("unitName", getUnitName())
                .append("subUnitCode", getSubUnitCode())
                .append("subUnitName", getSubUnitName())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
