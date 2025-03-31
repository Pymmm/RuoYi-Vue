package com.ruoyi.mdm.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mdm.mapper.EmployeeMapper;
import com.ruoyi.mdm.domain.Employee;
import com.ruoyi.mdm.service.IEmployeeService;

/**
 * 员工管理Service业务层处理
 * 
 * @author Yiming Pu
 * @date 2025-03-31
 */
@Service
public class EmployeeServiceImpl implements IEmployeeService 
{
    @Autowired
    private EmployeeMapper employeeMapper;

    /**
     * 查询员工管理
     * 
     * @param employeeCode 员工管理主键
     * @return 员工管理
     */
    @Override
    public Employee selectEmployeeByEmployeeCode(Long employeeCode)
    {
        return employeeMapper.selectEmployeeByEmployeeCode(employeeCode);
    }

    /**
     * 查询员工管理列表
     * 
     * @param employee 员工管理
     * @return 员工管理
     */
    @Override
    public List<Employee> selectEmployeeList(Employee employee)
    {
        return employeeMapper.selectEmployeeList(employee);
    }

    /**
     * 新增员工管理
     * 
     * @param employee 员工管理
     * @return 结果
     */
    @Override
    public int insertEmployee(Employee employee)
    {
        employee.setCreateTime(DateUtils.getNowDate());
        return employeeMapper.insertEmployee(employee);
    }

    /**
     * 修改员工管理
     * 
     * @param employee 员工管理
     * @return 结果
     */
    @Override
    public int updateEmployee(Employee employee)
    {
        employee.setUpdateTime(DateUtils.getNowDate());
        return employeeMapper.updateEmployee(employee);
    }

    /**
     * 批量删除员工管理
     * 
     * @param employeeCodes 需要删除的员工管理主键
     * @return 结果
     */
    @Override
    public int deleteEmployeeByEmployeeCodes(Long[] employeeCodes)
    {
        return employeeMapper.deleteEmployeeByEmployeeCodes(employeeCodes);
    }

    /**
     * 删除员工管理信息
     * 
     * @param employeeCode 员工管理主键
     * @return 结果
     */
    @Override
    public int deleteEmployeeByEmployeeCode(Long employeeCode)
    {
        return employeeMapper.deleteEmployeeByEmployeeCode(employeeCode);
    }

    /**
     * 新增：批量插入人员管理
     *
     * @param employeeList
     * @return 结果
     */
    @Override
    public int insertEmployees(List<Employee> employeeList) {
        return employeeMapper.insertEmployees(employeeList);
    }
}
