package com.my_ebook.vo;

import com.google.gson.annotations.Expose;

/**
 * @ClassName:SaleStatistics
 * @Author:liwei
 * @Description: TODO 销售统计
 * @Date:2019/6/27 10:51
 * @Version: V1.0
 */
public class SaleStatistics {
    @Expose
    private String dateStr;
    @Expose
    private Integer saleNum = 0;//图书销售数量
    @Expose
    private Double salesVolume = 0.0;//销售额

    public String getDateStr() {
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }

    public int getSaleNum() {
        return saleNum;
    }

    public void setSaleNum(Integer saleNum) {
        if (saleNum == null) {
            this.saleNum = 0;
        } else {
            this.saleNum = saleNum;
        }
    }

    public Double getSalesVolume() {

        return salesVolume;
    }

    public void setSalesVolume(Double salesVolume) {
        if (salesVolume == null) {
            this.salesVolume = 0.0;
        } else {

            this.salesVolume = salesVolume;
        }
    }

    @Override
    public String toString() {
        return "SaleStatistics{" +
                "dateStr='" + dateStr + '\'' +
                ", saleNum=" + saleNum +
                ", salesVolume=" + salesVolume +
                '}';
    }
}
