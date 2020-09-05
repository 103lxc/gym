package com.aaa.springboot06.entiy;

public class Pinfo {
    private Integer pid;
    private String pname;
    private Integer page;
    private String paddress;
    private Ainfo ainfo;

    public Ainfo getAinfo() {
        return ainfo;
    }

    public void setAinfo(Ainfo ainfo) {
        this.ainfo = ainfo;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public String getPaddress() {
        return paddress;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }
}
