package database.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * (Postgraduate)实体类
 *
 * @author makejava
 * @since 2021-01-19 13:30:17
 */
public class Postgraduate implements Serializable {
    private static final long serialVersionUID = -20805703713956201L;

    private String postgraduateId;

    private String teacherId;

    private String administratorId;

    private String postgraduateName;

    private String postgraduatePhone;

    private String postgraduateEmail;

    private Date postgraduateBirth;

    private String postgraduateSex;


    public String getPostgraduateId() {
        return postgraduateId;
    }

    public void setPostgraduateId(String postgraduateId) {
        this.postgraduateId = postgraduateId;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getAdministratorId() {
        return administratorId;
    }

    public void setAdministratorId(String administratorId) {
        this.administratorId = administratorId;
    }

    public String getPostgraduateName() {
        return postgraduateName;
    }

    public void setPostgraduateName(String postgraduateName) {
        this.postgraduateName = postgraduateName;
    }

    public String getPostgraduatePhone() {
        return postgraduatePhone;
    }

    public void setPostgraduatePhone(String postgraduatePhone) {
        this.postgraduatePhone = postgraduatePhone;
    }

    public String getPostgraduateEmail() {
        return postgraduateEmail;
    }

    public void setPostgraduateEmail(String postgraduateEmail) {
        this.postgraduateEmail = postgraduateEmail;
    }

    public Date getPostgraduateBirth() {
        return postgraduateBirth;
    }

    public void setPostgraduateBirth(Date postgraduateBirth) {
        this.postgraduateBirth = postgraduateBirth;
    }

    public String getPostgraduateSex() {
        return postgraduateSex;
    }

    public void setPostgraduateSex(String postgraduateSex) {
        this.postgraduateSex = postgraduateSex;
    }

}