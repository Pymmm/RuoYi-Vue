package com.ruoyi.organization.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.organization.domain.MdmOrganization;
import com.ruoyi.organization.service.IMdmOrganizationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 组织管理Controller
 * 
 * @author Yiming Pu
 * @date 2025-03-13
 */
@RestController
@RequestMapping("/organization/organization")
public class MdmOrganizationController extends BaseController
{
    @Autowired
    private IMdmOrganizationService mdmOrganizationService;

    /**
     * 查询组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:list')")
    @GetMapping("/list")
    public TableDataInfo list(MdmOrganization mdmOrganization)
    {
        startPage();
        List<MdmOrganization> list = mdmOrganizationService.selectMdmOrganizationList(mdmOrganization);
        return getDataTable(list);
    }

    /**
     * 导出组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:export')")
    @Log(title = "组织管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdmOrganization mdmOrganization)
    {
        List<MdmOrganization> list = mdmOrganizationService.selectMdmOrganizationList(mdmOrganization);
        ExcelUtil<MdmOrganization> util = new ExcelUtil<MdmOrganization>(MdmOrganization.class);
        util.exportExcel(response, list, "组织管理数据");
    }

    /**
     * 获取组织管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mdmOrganizationService.selectMdmOrganizationById(id));
    }

    /**
     * 新增组织管理
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:add')")
    @Log(title = "组织管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdmOrganization mdmOrganization)
    {
        return toAjax(mdmOrganizationService.insertMdmOrganization(mdmOrganization));
    }

    /**
     * 修改组织管理
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:edit')")
    @Log(title = "组织管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdmOrganization mdmOrganization)
    {
        return toAjax(mdmOrganizationService.updateMdmOrganization(mdmOrganization));
    }

    /**
     * 删除组织管理
     */
    @PreAuthorize("@ss.hasPermi('organization:organization:remove')")
    @Log(title = "组织管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mdmOrganizationService.deleteMdmOrganizationByIds(ids));
    }
}
