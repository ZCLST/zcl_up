package com.zcl.basic.product.engine.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

/**

 * @author  zcl

 * @create  2022/1/28 15:33

 * @desc    商品索引实体类

 **/
@Document(indexName = "product",type = "product")
public class ProductIndex {

    public static final String PRODUCT_ID="productId";
    public static final String PRODUCT_CODE="productCode";
    public static final String PRODUCT_NAME="productName";
    public static final String PRODUCT_MONEY="productMoney";
    public static final String STOCK="stock";
    public static final String BATCH="batch";
    public static final String SPECK="speck";
    public static final String PRODUCT_URL="productUrl";
    public static final String STATUS="status";
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
     * 库存数
     */
    @Field(type = FieldType.Long)
    private Long stock;
    /**
     * 批号（区分库存）
     */
    @Field(type = FieldType.Keyword)
    private String batch;
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

    public ProductIndex() {
    }

    public ProductIndex(String productId, String productCode, String productName, Long productMoney, Long stock, String batch, String speck, String productUrl, String status) {
        this.productId = productId;
        this.productCode = productCode;
        this.productName = productName;
        this.productMoney = productMoney;
        this.stock = stock;
        this.batch = batch;
        this.speck = speck;
        this.productUrl = productUrl;
        this.status = status;
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

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch;
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
}
