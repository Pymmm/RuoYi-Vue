package com.ruoyi.mdm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 员工管理对象 mdm_employee
 * 
 * @author Yiming Pu
 * @date 2025-03-20
 */
public class Employee extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 员工ID */
    private Long id;

    /** 员工编码 */
    @Excel(name = "员工编码")
    private String employeeCode;

    /** 员工姓名 */
    @Excel(name = "员工姓名")
    private String employeeName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setEmployeeCode(String employeeCode) 
    {
        this.employeeCode = employeeCode;
    }

    public String getEmployeeCode() 
    {
        return employeeCode;
    }

    public void setEmployeeName(String employeeName) 
    {
        this.employeeName = employeeName;
    }

    public String getEmployeeName() 
    {
        return employeeName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("employeeCode", getEmployeeCode())
            .append("employeeName", getEmployeeName())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
