package com.zcl.basic.product.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**

 * @author  zcl

 * @create  2022/1/28 11:53

 * @desc    商品实体类

 **/
@TableName(value = "t_product")
public class Product implements Serializable {
    private static final long serialVersionUID = -425279956345107367L;

    public static final String PRODUCT_ID="product_id";
    public static final String PRODUCT_CODE="product_code";
    public static final String PRODUCT_NAME="product_name";
    public static final String PRODUCT_MONEY="product_money";
    public static final String STOCK="stock";
    public static final String WARE_HOUSE_CODE="warehouse_code";
    public static final String SPECK="speck";
    public static final String PRODUCT_URL="product_url";
    public static final String STATUS="status";
    public static final String CREATE_TIME="create_time";
    /**
     * 商品主键
     */
    @TableId(type = IdType.UUID)
    private String productId;
    /**
     * 商品编码
     */
    private String productCode;
    /**
     * 商品名称
     */
    private String productName;
    /**
     * 商品价格（元）
     */
    private BigDecimal productMoney;
    /**
     * 库存数
     */
    private BigDecimal stock;
    /**
     * 仓库号（区分库存）
     */
    private String warehouseCode;
    /**
     * 单位
     */
    private String speck;
    /**
     * 商品图片链接
     */
    private String productUrl;
    /**
     * 是否启用0禁用，1启用
     */
    private String status;
    /**
     * 创建时间
     */
    private Date createTime;

    public Product() {
    }

    public Product(String productId, String productCode, String productName, BigDecimal productMoney, BigDecimal stock, String warehouseCode, String speck, String productUrl, String status, Date createTime) {
        this.productId = productId;
        this.productCode = productCode;
        this.productName = productName;
        this.productMoney = productMoney;
        this.stock = stock;
        this.warehouseCode = warehouseCode;
        this.speck = speck;
        this.productUrl = productUrl;
        this.status = status;
        this.createTime = createTime;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public BigDecimal getProductMoney() {
        return productMoney;
    }

    public void setProductMoney(BigDecimal productMoney) {
        this.productMoney = productMoney;
    }

    public BigDecimal getStock() {
        return stock;
    }

    public void setStock(BigDecimal stock) {
        this.stock = stock;
    }

    public String getWarehouseCode() {
        return warehouseCode;
    }

    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }

    public String getSpeck() {
        return speck;
    }

    public void setSpeck(String speck) {
        this.speck = speck;
    }

    public String getProductUrl() {
        return productUrl;
    }

    public void setProductUrl(String productUrl) {
        this.productUrl = productUrl;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
