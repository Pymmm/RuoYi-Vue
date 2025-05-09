package com.ruoyi.mdm.controller;

//新增：引入（否则会引起MultipartFile报错，暂时不知道是不是Spring Web依赖的问题）
import org.springframework.web.multipart.MultipartFile;
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
import com.ruoyi.mdm.domain.Department;
import com.ruoyi.mdm.service.IDepartmentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 部门管理Controller
 *
 * @author Yiming Pu
 * @date 2025-03-20
 */
@RestController
@RequestMapping("/mdm/department")
public class DepartmentController extends BaseController
{
    @Autowired
    private IDepartmentService departmentService;

    /**
     * 查询部门管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:list')")
    @GetMapping("/list")
    public TableDataInfo list(Department department)
    {
        startPage();
        List<Department> list = departmentService.selectDepartmentList(department);
        return getDataTable(list);
    }

    /**
     * 导出部门管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:export')")
    @Log(title = "部门管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Department department)
    {
        List<Department> list = departmentService.selectDepartmentList(department);
        ExcelUtil<Department> util = new ExcelUtil<Department>(Department.class);
        util.exportExcel(response, list, "部门管理数据");
    }

    /**
     * 新增：导入组织管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:add')")
    @Log(title = "部门管理", businessType = BusinessType.IMPORT)
    @PostMapping("/import")
    public AjaxResult excelImport(MultipartFile file) throws Exception {
        ExcelUtil<Department> util = new ExcelUtil<Department>(Department.class);
        List<Department> departmentList = util.importExcel(file.getInputStream());
        return toAjax(departmentService.insertDepartments(departmentList));
    }

    /**
     * 获取部门管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(departmentService.selectDepartmentById(id));
    }

    /**
     * 新增部门管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:add')")
    @Log(title = "部门管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Department department)
    {
        return toAjax(departmentService.insertDepartment(department));
    }

    /**
     * 修改部门管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:edit')")
    @Log(title = "部门管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Department department)
    {
        return toAjax(departmentService.updateDepartment(department));
    }

    /**
     * 删除部门管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:department:remove')")
    @Log(title = "部门管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(departmentService.deleteDepartmentByIds(ids));
    }
}
