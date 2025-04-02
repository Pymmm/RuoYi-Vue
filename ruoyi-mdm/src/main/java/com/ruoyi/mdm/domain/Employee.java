package com.ruoyi.mdm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 员工管理对象 mdm_employee
 * 
 * @author Yiming Pu
 * @date 2025-04-02
 */
public class Employee extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 员工编码 */
    @Excel(name = "员工编码")
    private Long employeeCode;

    /** 员工姓名 */
    @Excel(name = "员工姓名")
    private String employeeName;

    /** 账号状态 */
    @Excel(name = "账号状态")
    private Integer status;

    public void setEmployeeCode(Long employeeCode) 
    {
        this.employeeCode = employeeCode;
    }

    public Long getEmployeeCode() 
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

    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("employeeCode", getEmployeeCode())
            .append("employeeName", getEmployeeName())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
