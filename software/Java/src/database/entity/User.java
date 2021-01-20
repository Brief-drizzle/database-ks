package database.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * (User)实体类
 *
 * @author makejava
 * @since 2021-01-19 13:30:10
 */
public class User implements Serializable {
    private static final long serialVersionUID = -62647288270531002L;

    private String userid;

    private String usercategoryId;

    private String password;

    private Date lastlogintime;

    private String lastloginip;


    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsercategoryId() {
        return usercategoryId;
    }

    public void setUsercategoryId(String usercategoryId) {
        this.usercategoryId = usercategoryId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(Date lastlogintime) {
        this.lastlogintime = lastlogintime;
    }

    public String getLastloginip() {
        return lastloginip;
    }

    public void setLastloginip(String lastloginip) {
        this.lastloginip = lastloginip;
    }

}