package com.ruoyi.mdm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

//新增：引入（否则会引起MultipartFile报错，暂时不知道是不是Spring Web依赖的问题）
import com.ruoyi.common.core.domain.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.aspectj.weaver.ast.Or;
import org.springframework.web.multipart.MultipartFile;
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
@Api(tags = "组织管理")
public class OrganizationController extends BaseController {
    @Autowired
    private IOrganizationService organizationService;

    /**
     * 查询组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:list')")
    @ApiOperation(value = "查询组织管理列表", notes = "返回组织管理列表")
    @GetMapping("/list")
    public TableDataInfo list(
            @ApiParam(value = "查询条件", required = true) Organization organization) {
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
    public void export(HttpServletResponse response, Organization organization) {
        List<Organization> list = organizationService.selectOrganizationList(organization);
        ExcelUtil<Organization> util = new ExcelUtil<Organization>(Organization.class);
        util.exportEasyExcel(response, list, "组织管理数据");
    }

    /**
     * 新增：导入组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:add')")
    @Log(title = "组织管理", businessType = BusinessType.IMPORT)
    @PostMapping("/import")
    public AjaxResult excelImport(MultipartFile file) throws Exception {
        ExcelUtil<Organization> util = new ExcelUtil<Organization>(Organization.class);
        List<Organization> organizationList = util.importEasyExcel(file.getInputStream());
        return toAjax(organizationService.insertOrganizations(organizationList));
    }

    /**
     * 获取组织管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:query')")
    @ApiOperation(value = "获取组织管理详细信息", notes = "返回组织管理详细信息")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(
            @ApiParam(value = "组织ID", required = true)
            @PathVariable("id") Long id) {
        return success(organizationService.selectOrganizationById(id));
    }

    /**
     * 新增组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:add')")
    @Log(title = "组织管理", businessType = BusinessType.INSERT)
    @ApiOperation(value = "新增组织管理", notes = "返回新增组织管理结果")
    @PostMapping
    public AjaxResult add(
            @RequestBody Organization organization) {
        return toAjax(organizationService.insertOrganization(organization));
    }

    /**
     * 修改组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:edit')")
    @Log(title = "组织管理", businessType = BusinessType.UPDATE)
    @ApiOperation(value = "修改组织管理", notes = "返回修改组织管理结果")
    @PutMapping
    public AjaxResult edit(@RequestBody Organization organization) {
        return toAjax(organizationService.updateOrganization(organization));
    }

    /**
     * 删除组织管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:organization:remove')")
    @Log(title = "组织管理", businessType = BusinessType.DELETE)
    @ApiOperation(value = "删除组织", notes = "返回删除组织管理结果")
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(organizationService.deleteOrganizationByIds(ids));
    }
}
