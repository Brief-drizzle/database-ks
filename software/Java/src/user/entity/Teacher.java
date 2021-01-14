package user.entity;

import java.util.Date;

public class Teacher {
	private String teacherId;
	private String teacherName;
	private String teacherStatus;
	private String teacherPhone;
	private Date teacherBirth;
	private String teacherEmail;
	private String teacherSex;

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	
	public String getTeacherId() {
		return this.teacherId;
	}
	
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	
	public String getTeacherName() {
		return this.teacherName;
	}
	
	public void setTeacherStatus(String teacherStatus) {
		this.teacherStatus = teacherStatus;
	}
	
	public String getTeacherStatus() {
		return this.teacherStatus;
	}
	
	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}
	
	public String getTeacherPhone() {
		return this.teacherPhone;
	}
	
	public void setTeacherBirth(Date teacherBirth) {
		this.teacherBirth = teacherBirth;
	}
	
	public Date getTeacherBirth() {
		return this.teacherBirth;
	}
	
	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}
	
	public String getTeacherEmail() {
		return this.teacherEmail;
	}
	
	public void setTeacherSex(String teacherSex) {
		this.teacherSex = teacherSex;
	}
	
	public String getTeacherSex() {
		return this.teacherSex;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Teacher that = (Teacher) o;
        return teacherId.equals(that.teacherId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(teacherId);
    }
    
    @Override
    public String toString() {
        return "Teacher{" +
				"teacherId=" + teacherId +
						",teacherName='" + teacherName + "'" + 
						",teacherStatus='" + teacherStatus + "'" + 
						",teacherPhone='" + teacherPhone + "'" + 
						",teacherBirth='" + teacherBirth + "'" + 
						",teacherEmail='" + teacherEmail + "'" + 
						",teacherSex='" + teacherSex + "'" + 
		                '}';
    }
	
}