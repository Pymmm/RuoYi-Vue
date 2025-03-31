package com.ruoyi.mdm.mapper;

import java.util.List;
import com.ruoyi.mdm.domain.Employee;

/**
 * 员工管理Mapper接口
 *
 * @author Yiming Pu
 * @date 2025-03-31
 */
public interface EmployeeMapper
{
    /**
     * 查询员工管理
     *
     * @param employeeCode 员工管理主键
     * @return 员工管理
     */
    public Employee selectEmployeeByEmployeeCode(Long employeeCode);

    /**
     * 查询员工管理列表
     *
     * @param employee 员工管理
     * @return 员工管理集合
     */
    public List<Employee> selectEmployeeList(Employee employee);

    /**
     * 新增员工管理
     *
     * @param employee 员工管理
     * @return 结果
     */
    public int insertEmployee(Employee employee);

    /**
     * 修改员工管理
     *
     * @param employee 员工管理
     * @return 结果
     */
    public int updateEmployee(Employee employee);

    /**
     * 删除员工管理
     *
     * @param employeeCode 员工管理主键
     * @return 结果
     */
    public int deleteEmployeeByEmployeeCode(Long employeeCode);

    /**
     * 批量删除员工管理
     *
     * @param employeeCodes 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEmployeeByEmployeeCodes(Long[] employeeCodes);

    /**
     * 新增：批量插入人员管理
     *
     * @param employeeList
     * @return 结果
     */
    public int insertEmployees(List<Employee> employeeList);
}
