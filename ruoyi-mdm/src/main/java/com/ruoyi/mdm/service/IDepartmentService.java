package com.ruoyi.mdm.service;

import java.util.List;
import com.ruoyi.mdm.domain.Department;

/**
 * 部门管理Service接口
 *
 * @author Yiming Pu
 * @date 2025-03-20
 */
public interface IDepartmentService
{
    /**
     * 查询部门管理
     *
     * @param id 部门管理主键
     * @return 部门管理
     */
    public Department selectDepartmentById(Long id);

    /**
     * 查询部门管理列表
     *
     * @param department 部门管理
     * @return 部门管理集合
     */
    public List<Department> selectDepartmentList(Department department);

    /**
     * 新增部门管理
     *
     * @param department 部门管理
     * @return 结果
     */
    public int insertDepartment(Department department);

    /**
     * 修改部门管理
     *
     * @param department 部门管理
     * @return 结果
     */
    public int updateDepartment(Department department);

    /**
     * 批量删除部门管理
     *
     * @param ids 需要删除的部门管理主键集合
     * @return 结果
     */
    public int deleteDepartmentByIds(Long[] ids);

    /**
     * 删除部门管理信息
     *
     * @param id 部门管理主键
     * @return 结果
     */
    public int deleteDepartmentById(Long id);

    /**
     * 新增：批量插入组织管理
     *
     * @param departmentList
     * @return 结果
     */
    public int insertDepartments(List<Department> departmentList);
}
