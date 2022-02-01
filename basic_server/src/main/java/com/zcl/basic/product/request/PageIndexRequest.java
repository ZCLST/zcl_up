package com.zcl.basic.product.request;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;


/**

 * @author  zcl

 * @create  2022/1/28 17:34

 * @desc    索引分页泛型

 **/
public abstract class PageIndexRequest {

    /**
     * 分页大小
     */
    @NotNull(message = "pageSize不能为空")
    private Integer pageSize;
    /**
     * 页码
     */
    @NotNull(message = "pageNum不能为空")
    private Integer pageNum;


    public Pageable toPageable() {
        int pageNum = this.getPageNum() > 0 ? this.getPageNum() - 1 : 0;
        int pageSize = this.getPageSize();
        return PageRequest.of(pageNum, pageSize);
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }
}