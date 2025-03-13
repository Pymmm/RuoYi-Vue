package com.ruoyi.organization.service;

import java.util.List;
import com.ruoyi.organization.domain.MdmOrganization;

/**
 * 组织管理Service接口
 * 
 * @author Yiming Pu
 * @date 2025-03-13
 */
public interface IMdmOrganizationService 
{
    /**
     * 查询组织管理
     * 
     * @param id 组织管理主键
     * @return 组织管理
     */
    public MdmOrganization selectMdmOrganizationById(Long id);

    /**
     * 查询组织管理列表
     * 
     * @param mdmOrganization 组织管理
     * @return 组织管理集合
     */
    public List<MdmOrganization> selectMdmOrganizationList(MdmOrganization mdmOrganization);

    /**
     * 新增组织管理
     * 
     * @param mdmOrganization 组织管理
     * @return 结果
     */
    public int insertMdmOrganization(MdmOrganization mdmOrganization);

    /**
     * 修改组织管理
     * 
     * @param mdmOrganization 组织管理
     * @return 结果
     */
    public int updateMdmOrganization(MdmOrganization mdmOrganization);

    /**
     * 批量删除组织管理
     * 
     * @param ids 需要删除的组织管理主键集合
     * @return 结果
     */
    public int deleteMdmOrganizationByIds(Long[] ids);

    /**
     * 删除组织管理信息
     * 
     * @param id 组织管理主键
     * @return 结果
     */
    public int deleteMdmOrganizationById(Long id);
}
