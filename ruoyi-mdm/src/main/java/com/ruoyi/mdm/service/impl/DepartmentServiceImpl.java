package com.ruoyi.mdm.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mdm.mapper.DepartmentMapper;
import com.ruoyi.mdm.domain.Department;
import com.ruoyi.mdm.service.IDepartmentService;

/**
 * 部门管理Service业务层处理
 * 
 * @author Yiming Pu
 * @date 2025-03-20
 */
@Service
public class DepartmentServiceImpl implements IDepartmentService 
{
    @Autowired
    private DepartmentMapper departmentMapper;

    /**
     * 查询部门管理
     * 
     * @param id 部门管理主键
     * @return 部门管理
     */
    @Override
    public Department selectDepartmentById(Long id)
    {
        return departmentMapper.selectDepartmentById(id);
    }

    /**
     * 查询部门管理列表
     * 
     * @param department 部门管理
     * @return 部门管理
     */
    @Override
    public List<Department> selectDepartmentList(Department department)
    {
        return departmentMapper.selectDepartmentList(department);
    }

    /**
     * 新增部门管理
     * 
     * @param department 部门管理
     * @return 结果
     */
    @Override
    public int insertDepartment(Department department)
    {
        department.setCreateTime(DateUtils.getNowDate());
        return departmentMapper.insertDepartment(department);
    }

    /**
     * 修改部门管理
     * 
     * @param department 部门管理
     * @return 结果
     */
    @Override
    public int updateDepartment(Department department)
    {
        department.setUpdateTime(DateUtils.getNowDate());
        return departmentMapper.updateDepartment(department);
    }

    /**
     * 批量删除部门管理
     * 
     * @param ids 需要删除的部门管理主键
     * @return 结果
     */
    @Override
    public int deleteDepartmentByIds(Long[] ids)
    {
        return departmentMapper.deleteDepartmentByIds(ids);
    }

    /**
     * 删除部门管理信息
     * 
     * @param id 部门管理主键
     * @return 结果
     */
    @Override
    public int deleteDepartmentById(Long id)
    {
        return departmentMapper.deleteDepartmentById(id);
    }
}
