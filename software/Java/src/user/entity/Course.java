package user.entity;

import java.util.Date;

public class Course {
	private String courseId;
	private String courseName;
	private String courseNature;
	private Date courseStarttime;
	private Date courseEndtime;
	private String courseAudience;
	private Integer courseStudentnum;
	private Integer courseTeachtime;

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseId() {
		return this.courseId;
	}
	
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
	public String getCourseName() {
		return this.courseName;
	}
	
	public void setCourseNature(String courseNature) {
		this.courseNature = courseNature;
	}
	
	public String getCourseNature() {
		return this.courseNature;
	}
	
	public void setCourseStarttime(Date courseStarttime) {
		this.courseStarttime = courseStarttime;
	}
	
	public Date getCourseStarttime() {
		return this.courseStarttime;
	}
	
	public void setCourseEndtime(Date courseEndtime) {
		this.courseEndtime = courseEndtime;
	}
	
	public Date getCourseEndtime() {
		return this.courseEndtime;
	}
	
	public void setCourseAudience(String courseAudience) {
		this.courseAudience = courseAudience;
	}
	
	public String getCourseAudience() {
		return this.courseAudience;
	}
	
	public void setCourseStudentnum(Integer courseStudentnum) {
		this.courseStudentnum = courseStudentnum;
	}
	
	public Integer getCourseStudentnum() {
		return this.courseStudentnum;
	}
	
	public void setCourseTeachtime(Integer courseTeachtime) {
		this.courseTeachtime = courseTeachtime;
	}
	
	public Integer getCourseTeachtime() {
		return this.courseTeachtime;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Course that = (Course) o;
        return courseId.equals(that.courseId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(courseId);
    }
    
    @Override
    public String toString() {
        return "Course{" +
				"courseId=" + courseId +
						",courseName='" + courseName + "'" + 
						",courseNature='" + courseNature + "'" + 
						",courseStarttime='" + courseStarttime + "'" + 
						",courseEndtime='" + courseEndtime + "'" + 
						",courseAudience='" + courseAudience + "'" + 
						",courseStudentnum='" + courseStudentnum + "'" + 
						",courseTeachtime='" + courseTeachtime + "'" + 
		                '}';
    }
	
}