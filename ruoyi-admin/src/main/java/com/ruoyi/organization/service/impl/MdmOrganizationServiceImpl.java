package com.ruoyi.organization.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.organization.mapper.MdmOrganizationMapper;
import com.ruoyi.organization.domain.MdmOrganization;
import com.ruoyi.organization.service.IMdmOrganizationService;

/**
 * 组织管理Service业务层处理
 * 
 * @author Yiming Pu
 * @date 2025-03-13
 */
@Service
public class MdmOrganizationServiceImpl implements IMdmOrganizationService 
{
    @Autowired
    private MdmOrganizationMapper mdmOrganizationMapper;

    /**
     * 查询组织管理
     * 
     * @param id 组织管理主键
     * @return 组织管理
     */
    @Override
    public MdmOrganization selectMdmOrganizationById(Long id)
    {
        return mdmOrganizationMapper.selectMdmOrganizationById(id);
    }

    /**
     * 查询组织管理列表
     * 
     * @param mdmOrganization 组织管理
     * @return 组织管理
     */
    @Override
    public List<MdmOrganization> selectMdmOrganizationList(MdmOrganization mdmOrganization)
    {
        return mdmOrganizationMapper.selectMdmOrganizationList(mdmOrganization);
    }

    /**
     * 新增组织管理
     * 
     * @param mdmOrganization 组织管理
     * @return 结果
     */
    @Override
    public int insertMdmOrganization(MdmOrganization mdmOrganization)
    {
        mdmOrganization.setCreateTime(DateUtils.getNowDate());
        return mdmOrganizationMapper.insertMdmOrganization(mdmOrganization);
    }

    /**
     * 修改组织管理
     * 
     * @param mdmOrganization 组织管理
     * @return 结果
     */
    @Override
    public int updateMdmOrganization(MdmOrganization mdmOrganization)
    {
        mdmOrganization.setUpdateTime(DateUtils.getNowDate());
        return mdmOrganizationMapper.updateMdmOrganization(mdmOrganization);
    }

    /**
     * 批量删除组织管理
     * 
     * @param ids 需要删除的组织管理主键
     * @return 结果
     */
    @Override
    public int deleteMdmOrganizationByIds(Long[] ids)
    {
        return mdmOrganizationMapper.deleteMdmOrganizationByIds(ids);
    }

    /**
     * 删除组织管理信息
     * 
     * @param id 组织管理主键
     * @return 结果
     */
    @Override
    public int deleteMdmOrganizationById(Long id)
    {
        return mdmOrganizationMapper.deleteMdmOrganizationById(id);
    }
}
