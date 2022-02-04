package com.zcl.basic.product.engine.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.util.Date;

/**

 * @author  zcl

 * @create  2022/1/28 15:33

 * @desc    商品索引实体类

 **/
@Document(indexName = "product")
public class ProductIndex {

    public static final String PRODUCT_ID="productId";
    public static final String PRODUCT_CODE="productCode";
    public static final String PRODUCT_NAME="productName";
    public static final String PRODUCT_MONEY="productMoney";
    public static final String STOCK="stock";
    public static final String WARE_HOUSE_CODE="warehouse_code";
    public static final String SPECK="speck";
    public static final String PRODUCT_URL="productUrl";
    public static final String STATUS="status";
    public static final String CREATE_TIME="createTime";
    /**
     * 商品主键
     */
    @Id
    private String productId;
    /**
     * 商品编码
     */
    @Field(type = FieldType.Keyword) //关键字 不分词
    private String productCode;
    /**
     * 商品名称
     */
    @Field(type = FieldType.Keyword)
    private String productName;
    /**
     * 商品价格（元）
     */
    @Field(type = FieldType.Long)
    private Long productMoney;
    /**
     * 库存总数
     */
    @Field(type = FieldType.Long)
    private Long stock;
    /**
     * 单位
     */
    @Field(type = FieldType.Text)
    private String speck;
    /**
     * 商品图片链接
     */
    @Field(type = FieldType.Text)
    private String productUrl;
    /**
     * 是否启用0禁用，1启用
     */
    @Field(type = FieldType.Text)
    private String status;
    /**
     * 创建时间
     */
    @Field(type = FieldType.Date,format = DateFormat.date_hour_minute_second)
    private Date createTime;

    public ProductIndex() {
    }

    public ProductIndex(String productId, String productCode, String productName, Long productMoney, Long stock, String speck, String productUrl, String status, Date createTime) {
        this.productId = productId;
        this.productCode = productCode;
        this.productName = productName;
        this.productMoney = productMoney;
        this.stock = stock;
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

    public Long getProductMoney() {
        return productMoney;
    }

    public void setProductMoney(Long productMoney) {
        this.productMoney = productMoney;
    }

    public Long getStock() {
        return stock;
    }

    public void setStock(Long stock) {
        this.stock = stock;
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
