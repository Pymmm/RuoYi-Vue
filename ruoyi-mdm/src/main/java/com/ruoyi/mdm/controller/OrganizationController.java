package com.ruoyi.mdm.controller;

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
import com.ruoyi.mdm.domain.Organization;
import com.ruoyi.mdm.service.IOrganizationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 组织管理Controller
 * 
 * @author Yiming Pu
 * @date 2025-03-14
 */
@RestController
@RequestMapping("/mdm/organization")
public class OrganizationController extends BaseController
{
    @Autowired
    private IOrganizationService organizationService;

    /**
     * 查询组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:list')")
    @GetMapping("/list")
    public TableDataInfo list(Organization organization)
    {
        startPage();
        List<Organization> list = organizationService.selectOrganizationList(organization);
        return getDataTable(list);
    }

    /**
     * 导出组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:export')")
    @Log(title = "组织管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Organization organization)
    {
        List<Organization> list = organizationService.selectOrganizationList(organization);
        ExcelUtil<Organization> util = new ExcelUtil<Organization>(Organization.class);
        util.exportExcel(response, list, "组织管理数据");
    }

    /**
     * 获取组织管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(organizationService.selectOrganizationById(id));
    }

    /**
     * 新增组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:add')")
    @Log(title = "组织管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Organization organization)
    {
        return toAjax(organizationService.insertOrganization(organization));
    }

    /**
     * 修改组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:edit')")
    @Log(title = "组织管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Organization organization)
    {
        return toAjax(organizationService.updateOrganization(organization));
    }

    /**
     * 删除组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:remove')")
    @Log(title = "组织管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(organizationService.deleteOrganizationByIds(ids));
    }
}
