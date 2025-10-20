package com.ruoyi.mdm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

//新增：引入（否则会引起MultipartFile报错，暂时不知道是不是Spring Web依赖的问题）
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
import com.ruoyi.mdm.domain.ProductionOrder;
import com.ruoyi.mdm.service.IProductionOrderService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 生产订单管理Controller
 *
 * @author Yiming Pu
 * @date 2025-10-13
 */
@RestController
@RequestMapping("/mdm/productionOrder")
public class ProductionOrderController extends BaseController {
    @Autowired
    private IProductionOrderService productionOrderService;

    /**
     * 查询生产订单管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProductionOrder productionOrder) {
        startPage();
        List<ProductionOrder> list = productionOrderService.selectProductionOrderList(productionOrder);
        return getDataTable(list);
    }

    /**
     * 导出生产订单管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:export')")
    @Log(title = "生产订单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProductionOrder productionOrder) {
        List<ProductionOrder> list = productionOrderService.selectProductionOrderList(productionOrder);
        ExcelUtil<ProductionOrder> util = new ExcelUtil<ProductionOrder>(ProductionOrder.class);
        util.exportExcel(response, list, "生产订单管理数据");
    }

    /**
     * 新增：导入生产订单管理列表
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:add')")
    @Log(title = "生产订单管理", businessType = BusinessType.IMPORT)
    @PostMapping("/import")
    public AjaxResult excelImport(MultipartFile file) throws Exception {
        ExcelUtil<ProductionOrder> util = new ExcelUtil<ProductionOrder>(ProductionOrder.class);
        List<ProductionOrder> productionOrderList = util.importExcel(file.getInputStream());
        return toAjax(productionOrderService.insertProductionOrders(productionOrderList));
    }

    /**
     * 获取生产订单管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(productionOrderService.selectProductionOrderById(id));
    }

    /**
     * 新增生产订单管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:add')")
    @Log(title = "生产订单管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProductionOrder productionOrder) {
        return toAjax(productionOrderService.insertProductionOrder(productionOrder));
    }

    /**
     * 修改生产订单管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:edit')")
    @Log(title = "生产订单管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProductionOrder productionOrder) {
        return toAjax(productionOrderService.updateProductionOrder(productionOrder));
    }

    /**
     * 删除生产订单管理
     */
    @PreAuthorize("@ss.hasPermi('mdm:productionOrder:remove')")
    @Log(title = "生产订单管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(productionOrderService.deleteProductionOrderByIds(ids));
    }
}
