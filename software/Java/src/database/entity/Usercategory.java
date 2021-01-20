package database.entity;

import java.io.Serializable;

/**
 * (Usercategory)实体类
 *
 * @author makejava
 * @since 2021-01-19 13:30:16
 */
public class Usercategory implements Serializable {
    private static final long serialVersionUID = 576555562421335521L;

    private String usercategoryId;

    private String usercategoryName;

    private Integer nowId;


    public String getUsercategoryId() {
        return usercategoryId;
    }

    public void setUsercategoryId(String usercategoryId) {
        this.usercategoryId = usercategoryId;
    }

    public String getUsercategoryName() {
        return usercategoryName;
    }

    public void setUsercategoryName(String usercategoryName) {
        this.usercategoryName = usercategoryName;
    }

    public Integer getNowId() {
        return nowId;
    }

    public void setNowId(Integer nowId) {
        this.nowId = nowId;
    }

}