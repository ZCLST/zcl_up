package com.zcl.basic.warehouse.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import com.zcl.basic.product.dto.ProductStockDto;
import com.zcl.basic.warehouse.model.WareHouse;
import com.zcl.basic.warehouse.vo.SelectPageWarehouseVo;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/5 15:39

 * @desc    仓库管理通用业务实现层

 **/
public interface WarehouseService {
    /**
     * 分页查询商品未绑定仓库
     * @param warehousePage
     * @param warehouseCode
     * @param productId
     * @return
     */
    IPage<SelectPageWarehouseVo> selectPageWarehouse(IPage<SelectPageWarehouseVo> warehousePage, String warehouseCode, String productId);

    /**
     * 分页查询商品已绑定仓库
     * @param warehousePage
     * @param warehouseCode
     * @param productId
     * @return
     */
    IPage<SelectPageWarehouseVo> selectPageBindWarehouse(IPage<SelectPageWarehouseVo> warehousePage, String warehouseCode, String productId);

    /**
     * 根据商品ID计算库存总量
     * @param productIds
     * @return
     */
    List<ProductStockDto> selectStock(List<String> productIds);
}
