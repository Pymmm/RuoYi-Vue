package com.ruoyi.organization.domain;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.HeadFontStyle;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 组织管理对象 mdm_organization
 *
 * @author Yiming Pu
 * @date 2025-03-13
 */
@ExcelIgnoreUnannotated // 注解表示在导出Excel时，忽略没有被任何注解标注的字段
@ColumnWidth(16) //注解用于设置列的宽度
@HeadRowHeight(14) //注解用于设置表头行高度
@HeadFontStyle(fontHeightInPoints = 11) //注解用于设置表头的字体样式
public class MdmOrganization extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 组织ID
     */
    private Long id;

    /**
     * 组织编码
     */
    @Excel(name = "组织编码")
    @ExcelProperty("组织编码")
    private String organizationCode;

    /**
     * 组织名称
     */
    @Excel(name = "组织名称")
    @ExcelProperty("组织名称")
    private String organizationName;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setOrganizationCode(String organizationCode) {
        this.organizationCode = organizationCode;
    }

    public String getOrganizationCode() {
        return organizationCode;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("organizationCode", getOrganizationCode())
                .append("organizationName", getOrganizationName())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
