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
import com.ruoyi.mdm.domain.Employee;
import com.ruoyi.mdm.service.IEmployeeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 员工管理Controller
 * 
 * @author Yiming Pu
 * @date 2025-03-31
 */
@RestController
@RequestMapping("/mdm/employee")
public class EmployeeController extends BaseController
{
    @Autowired
    private IEmployeeService employeeService;

    /**
     * 查询员工管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:list')")
    @GetMapping("/list")
    public TableDataInfo list(Employee employee)
    {
        startPage();
        List<Employee> list = employeeService.selectEmployeeList(employee);
        return getDataTable(list);
    }

    /**
     * 导出员工管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:export')")
    @Log(title = "员工管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Employee employee)
    {
        List<Employee> list = employeeService.selectEmployeeList(employee);
        ExcelUtil<Employee> util = new ExcelUtil<Employee>(Employee.class);
        util.exportExcel(response, list, "员工管理数据");
    }

    /**
     * 新增：导入员工管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:add')")
    @Log(title = "员工管理", businessType = BusinessType.IMPORT)
    @PostMapping("/import")
    public AjaxResult excelImport(MultipartFile file) throws Exception {
        ExcelUtil<Employee> util = new ExcelUtil<Employee>(Employee.class);
        List<Employee> employeeList = util.importExcel(file.getInputStream());
        return toAjax(employeeService.insertEmployees(employeeList));
    }

    /**
     * 获取员工管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:query')")
    @GetMapping(value = "/{employeeCode}")
    public AjaxResult getInfo(@PathVariable("employeeCode") Long employeeCode)
    {
        return success(employeeService.selectEmployeeByEmployeeCode(employeeCode));
    }

    /**
     * 新增员工管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:add')")
    @Log(title = "员工管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Employee employee)
    {
        return toAjax(employeeService.insertEmployee(employee));
    }

    /**
     * 修改员工管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:edit')")
    @Log(title = "员工管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Employee employee)
    {
        return toAjax(employeeService.updateEmployee(employee));
    }

    /**
     * 删除员工管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:employee:remove')")
    @Log(title = "员工管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{employeeCodes}")
    public AjaxResult remove(@PathVariable Long[] employeeCodes)
    {
        return toAjax(employeeService.deleteEmployeeByEmployeeCodes(employeeCodes));
    }
}
