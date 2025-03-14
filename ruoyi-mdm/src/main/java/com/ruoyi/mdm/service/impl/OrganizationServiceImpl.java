package com.ruoyi.mdm.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mdm.mapper.OrganizationMapper;
import com.ruoyi.mdm.domain.Organization;
import com.ruoyi.mdm.service.IOrganizationService;

/**
 * 组织管理Service业务层处理
 * 
 * @author Yiming Pu
 * @date 2025-03-14
 */
@Service
public class OrganizationServiceImpl implements IOrganizationService 
{
    @Autowired
    private OrganizationMapper organizationMapper;

    /**
     * 查询组织管理
     * 
     * @param id 组织管理主键
     * @return 组织管理
     */
    @Override
    public Organization selectOrganizationById(Long id)
    {
        return organizationMapper.selectOrganizationById(id);
    }

    /**
     * 查询组织管理列表
     * 
     * @param organization 组织管理
     * @return 组织管理
     */
    @Override
    public List<Organization> selectOrganizationList(Organization organization)
    {
        return organizationMapper.selectOrganizationList(organization);
    }

    /**
     * 新增组织管理
     * 
     * @param organization 组织管理
     * @return 结果
     */
    @Override
    public int insertOrganization(Organization organization)
    {
        organization.setCreateTime(DateUtils.getNowDate());
        return organizationMapper.insertOrganization(organization);
    }

    /**
     * 修改组织管理
     * 
     * @param organization 组织管理
     * @return 结果
     */
    @Override
    public int updateOrganization(Organization organization)
    {
        organization.setUpdateTime(DateUtils.getNowDate());
        return organizationMapper.updateOrganization(organization);
    }

    /**
     * 批量删除组织管理
     * 
     * @param ids 需要删除的组织管理主键
     * @return 结果
     */
    @Override
    public int deleteOrganizationByIds(Long[] ids)
    {
        return organizationMapper.deleteOrganizationByIds(ids);
    }

    /**
     * 删除组织管理信息
     * 
     * @param id 组织管理主键
     * @return 结果
     */
    @Override
    public int deleteOrganizationById(Long id)
    {
        return organizationMapper.deleteOrganizationById(id);
    }

    /**
     * 新增：批量插入组织管理
     *
     * @param organizationList
     * @return 结果
     */
    @Override
    public int insertOrganization(List<Organization> organizationList) {
        return organizationMapper.insertOrganization(organizationList);
    }
}
