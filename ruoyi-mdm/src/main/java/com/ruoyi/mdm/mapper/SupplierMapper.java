package com.ruoyi.mdm.mapper;

import java.util.List;
import com.ruoyi.mdm.domain.Supplier;

/**
 * 供应商管理Mapper接口
 * 
 * @author Yiming Pu
 * @date 2025-04-21
 */
public interface SupplierMapper 
{
    /**
     * 查询供应商管理
     * 
     * @param id 供应商管理主键
     * @return 供应商管理
     */
    public Supplier selectSupplierById(Long id);

    /**
     * 查询供应商管理列表
     * 
     * @param supplier 供应商管理
     * @return 供应商管理集合
     */
    public List<Supplier> selectSupplierList(Supplier supplier);

    /**
     * 新增供应商管理
     * 
     * @param supplier 供应商管理
     * @return 结果
     */
    public int insertSupplier(Supplier supplier);

    /**
     * 修改供应商管理
     * 
     * @param supplier 供应商管理
     * @return 结果
     */
    public int updateSupplier(Supplier supplier);

    /**
     * 删除供应商管理
     * 
     * @param id 供应商管理主键
     * @return 结果
     */
    public int deleteSupplierById(Long id);

    /**
     * 批量删除供应商管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSupplierByIds(Long[] ids);

    /**
     * 新增：批量插入供应商管理
     *
     * @param supplierList
     * @return 结果
     */
    public int insertSuppliers(List<Supplier> supplierList);
}
