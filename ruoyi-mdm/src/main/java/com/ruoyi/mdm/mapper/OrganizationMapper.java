package com.ruoyi.mdm.mapper;

import java.util.List;
import com.ruoyi.mdm.domain.Organization;

/**
 * 组织管理Mapper接口
 * 
 * @author Yiming Pu
 * @date 2025-03-14
 */
public interface OrganizationMapper 
{
    /**
     * 查询组织管理
     * 
     * @param id 组织管理主键
     * @return 组织管理
     */
    public Organization selectOrganizationById(Long id);

    /**
     * 查询组织管理列表
     * 
     * @param organization 组织管理
     * @return 组织管理集合
     */
    public List<Organization> selectOrganizationList(Organization organization);

    /**
     * 新增组织管理
     * 
     * @param organization 组织管理
     * @return 结果
     */
    public int insertOrganization(Organization organization);

    /**
     * 修改组织管理
     * 
     * @param organization 组织管理
     * @return 结果
     */
    public int updateOrganization(Organization organization);

    /**
     * 删除组织管理
     * 
     * @param id 组织管理主键
     * @return 结果
     */
    public int deleteOrganizationById(Long id);

    /**
     * 批量删除组织管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrganizationByIds(Long[] ids);
}
