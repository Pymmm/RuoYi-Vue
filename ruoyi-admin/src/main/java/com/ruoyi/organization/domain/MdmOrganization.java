package com.ruoyi.organization.domain;

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
public class MdmOrganization extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 组织ID */
    private Long id;

    /** 组织编码 */
    @Excel(name = "组织编码")
    private String organizationCode;

    /** 组织名称 */
    @Excel(name = "组织名称")
    private String organizationName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
