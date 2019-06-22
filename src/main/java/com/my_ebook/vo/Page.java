package com.my_ebook.vo;

import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author LIWEI
 * @time 2018年11月15日下午10:08:34
 * @description：分页信息
 */
public class Page<T> {

    private int pageStart = 1;// 当前页起始位置

    private int pageSize = 20;// 每页长度 默认为20

    private int pageNumber;// 总页数

    private int pageCurrent = 1;// 当前页数

    private int totalPage;// 总页数

    private int totalRecord;// 总记录数

    private String path;// 分页数据的路径

    private List<T> pageInfos;//查询到的分页数据、


    public Page() {

    }

    public Page(int totalRecord, int pageCurrent, int pageSize) {
        this.totalRecord = totalRecord;
        this.pageCurrent = pageCurrent;
        this.pageSize = pageSize;
    }

    /**
     * @return the pageStart
     */
    public int getPageStart() {
        return (pageCurrent - 1) * pageSize;
    }

    /**
     * @param pageStart the pageStart to set
     */
    public void setPageStart(int pageStart) {
        this.pageStart = pageStart;
    }

    /**
     * @return the pageSize
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * @param pageSize the pageSize to set
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * @return the pageNumber
     */
    public int getPageNumber() {
        return pageNumber;
    }

    /**
     * @param pageNumber the pageNumber to set
     */
    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    /**
     * @return the pageCurrent
     */
    public int getPageCurrent() {
        return pageCurrent;
    }

    /**
     * @param pageCurrent the pageCurrent to set
     */
    public void setPageCurrent(int pageCurrent) {
        this.pageCurrent = pageCurrent;
    }

    /**
     * @return the totalPage
     */
    public int getTotalPage() {

        if (totalRecord == 0) return 1;
        totalPage = totalRecord % pageSize == 0 ? (totalRecord / pageSize) : (totalRecord / pageSize + 1);
        return totalPage;
    }

    /**
     * @param totalPage the totalPage to set
     */
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    /**
     * @return the totalRecord
     */
    public int getTotalRecord() {
        return totalRecord;
    }

    /**
     * @param totalRecord the totalRecord to set
     */
    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
        totalPage = totalRecord % pageSize == 0 ? (totalRecord / pageSize) : (totalRecord / pageSize + 1);
    }

    /**
     * @return the path
     */
    public String getPath() {
        return path;
    }

    /**
     * @param path the path to set
     */
    public void setPath(String path) {
        this.path = path;
    }

    public List<T> getPageInfos() {
        return pageInfos;
    }

    public void setPageInfos(List<T> pageInfos) {
        this.pageInfos = pageInfos;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageStart=" + pageStart +
                ", pageSize=" + pageSize +
                ", pageNumber=" + pageNumber +
                ", pageCurrent=" + pageCurrent +
                ", totalPage=" + totalPage +
                ", totalRecord=" + totalRecord +
                ", path='" + path + '\'' +
                ", pageInfos=" + pageInfos +
                '}';
    }
}

