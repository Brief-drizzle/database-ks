package database.entity;

import java.io.Serializable;

/**
 * (Course)实体类
 *
 * @author makejava
 * @since 2021-01-19 13:30:18
 */
public class Course implements Serializable {
    private static final long serialVersionUID = 820183034447618455L;

    private String courseId;

    private String courseName;

    private String courseNature;

    private Object courseStarttime;

    private Object courseEndtime;

    private String courseAudience;

    private Integer courseStudentnum;

    private Integer courseTeachtime;


    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseNature() {
        return courseNature;
    }

    public void setCourseNature(String courseNature) {
        this.courseNature = courseNature;
    }

    public Object getCourseStarttime() {
        return courseStarttime;
    }

    public void setCourseStarttime(Object courseStarttime) {
        this.courseStarttime = courseStarttime;
    }

    public Object getCourseEndtime() {
        return courseEndtime;
    }

    public void setCourseEndtime(Object courseEndtime) {
        this.courseEndtime = courseEndtime;
    }

    public String getCourseAudience() {
        return courseAudience;
    }

    public void setCourseAudience(String courseAudience) {
        this.courseAudience = courseAudience;
    }

    public Integer getCourseStudentnum() {
        return courseStudentnum;
    }

    public void setCourseStudentnum(Integer courseStudentnum) {
        this.courseStudentnum = courseStudentnum;
    }

    public Integer getCourseTeachtime() {
        return courseTeachtime;
    }

    public void setCourseTeachtime(Integer courseTeachtime) {
        this.courseTeachtime = courseTeachtime;
    }

}