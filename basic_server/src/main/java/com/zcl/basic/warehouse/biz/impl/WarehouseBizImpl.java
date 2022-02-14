package com.zcl.basic.warehouse.biz.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import com.zcl.basic.product.service.ProductService;
import com.zcl.basic.warehouse.biz.WarehouseBiz;
import com.zcl.basic.warehouse.model.ProductWarehouseRel;
import com.zcl.basic.warehouse.model.WareHouse;
import com.zcl.basic.warehouse.request.BindProductWarehouseRequest;
import com.zcl.basic.warehouse.request.ChangeProductWarehouseBindRelRequest;
import com.zcl.basic.warehouse.request.SelectPageWarehouseRequest;
import com.zcl.basic.warehouse.request.UpdateProductWarehouseStockRequest;
import com.zcl.basic.warehouse.service.ProductWarehouseRelService;
import com.zcl.basic.warehouse.service.WarehouseService;
import com.zcl.basic.warehouse.vo.SelectPageWarehouseVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/2/5 15:38
 * @desc 仓库管理核心业务实现层
 **/
@Service
public class WarehouseBizImpl implements WarehouseBiz {
    private WarehouseService warehouseService;
    private ProductService productService;
    private ProductWarehouseRelService productWarehouseRelService;

    public WarehouseBizImpl(WarehouseService warehouseService, ProductService productService, ProductWarehouseRelService productWarehouseRelService) {
        this.warehouseService = warehouseService;
        this.productService = productService;
        this.productWarehouseRelService = productWarehouseRelService;
    }

    @Override
    public Map<String, Object> selectPageWarehouse(SelectPageWarehouseRequest selectPageWarehouseRequest) {
        //加工请求体
        IPage<SelectPageWarehouseVo> warehousePage = new Page<>(selectPageWarehouseRequest.getPageNum(), selectPageWarehouseRequest.getPageSize());
        IPage<SelectPageWarehouseVo> wareHouseIPage = warehouseService.selectPageWarehouse(warehousePage, selectPageWarehouseRequest.getWarehouseCode(), selectPageWarehouseRequest.getProductId());
        return CommonResponse.setResponseData(wareHouseIPage);
    }

    @Override
    public Map<String, Object> selectPageBindWarehouse(SelectPageWarehouseRequest selectPageWarehouseRequest) {
        //加工请求体
        IPage<SelectPageWarehouseVo> warehousePage = new Page<>(selectPageWarehouseRequest.getPageNum(), selectPageWarehouseRequest.getPageSize());
        IPage<SelectPageWarehouseVo> wareHouseIPage = warehouseService.selectPageBindWarehouse(warehousePage, selectPageWarehouseRequest.getWarehouseCode(), selectPageWarehouseRequest.getProductId());
        return CommonResponse.setResponseData(wareHouseIPage);
    }

    @Override
    public Map<String, Object> bindProductWarehouse(BindProductWarehouseRequest bindProductWarehouseRequest) {
        ProductWarehouseRel productWarehouseRel = BeanUtil.convert(bindProductWarehouseRequest, ProductWarehouseRel.class);
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        //库存数初始为0，启用状态初始为启用
        productWarehouseRel.setStatus(StatusEnum.YES.getFlag());
        productWarehouseRel.setCreateTime(date);
        productWarehouseRelService.saveProductWarehouseRel(productWarehouseRel);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> updateProductWarehouseStock(UpdateProductWarehouseStockRequest updateProductWarehouseStockRequest) {
        String productWarehouseId = updateProductWarehouseStockRequest.getProductWarehouseId();
        BigDecimal stock = updateProductWarehouseStockRequest.getStock();
        //判断关系是否存在
        ProductWarehouseRel productWarehouseRel = productWarehouseRelService.findProductWarehouseRelById(productWarehouseId);
        Assert.notNull(productWarehouseRel, "该关系不存在！");
        productWarehouseRel.setStock(stock);
        //更新数据库库存
        productWarehouseRelService.updateProductWarehouseRel(productWarehouseRel);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> changeProductWarehouseBindRel(ChangeProductWarehouseBindRelRequest changeProductWarehouseBindRelRequest) {
        String productWarehouseId = changeProductWarehouseBindRelRequest.getProductWarehouseId();
        String status = changeProductWarehouseBindRelRequest.getStatus();
        ProductWarehouseRel productWarehouseRelById = productWarehouseRelService.findProductWarehouseRelById(productWarehouseId);
        productWarehouseRelById.setStatus(status);
        productWarehouseRelService.updateProductWarehouseRel(productWarehouseRelById);
        return CommonResponse.setResponseData(null);
    }
}