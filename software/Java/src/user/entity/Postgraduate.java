package user.entity;

import java.util.Date;

public class Postgraduate {
	private String postgraduateId;
	private String teacherId;
	private String administratorId;
	private String postgraduateName;
	private String postgraduatePhone;
	private String postgraduateEmail;
	private Date postgraduateBirth;
	private String postgraduateSex;

	public void setPostgraduateId(String postgraduateId) {
		this.postgraduateId = postgraduateId;
	}
	
	public String getPostgraduateId() {
		return this.postgraduateId;
	}
	
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	
	public String getTeacherId() {
		return this.teacherId;
	}
	
	public void setAdministratorId(String administratorId) {
		this.administratorId = administratorId;
	}
	
	public String getAdministratorId() {
		return this.administratorId;
	}
	
	public void setPostgraduateName(String postgraduateName) {
		this.postgraduateName = postgraduateName;
	}
	
	public String getPostgraduateName() {
		return this.postgraduateName;
	}
	
	public void setPostgraduatePhone(String postgraduatePhone) {
		this.postgraduatePhone = postgraduatePhone;
	}
	
	public String getPostgraduatePhone() {
		return this.postgraduatePhone;
	}
	
	public void setPostgraduateEmail(String postgraduateEmail) {
		this.postgraduateEmail = postgraduateEmail;
	}
	
	public String getPostgraduateEmail() {
		return this.postgraduateEmail;
	}
	
	public void setPostgraduateBirth(Date postgraduateBirth) {
		this.postgraduateBirth = postgraduateBirth;
	}
	
	public Date getPostgraduateBirth() {
		return this.postgraduateBirth;
	}
	
	public void setPostgraduateSex(String postgraduateSex) {
		this.postgraduateSex = postgraduateSex;
	}
	
	public String getPostgraduateSex() {
		return this.postgraduateSex;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Postgraduate that = (Postgraduate) o;
        return postgraduateId.equals(that.postgraduateId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(postgraduateId);
    }
    
    @Override
    public String toString() {
        return "Postgraduate{" +
				"postgraduateId=" + postgraduateId +
						",teacherId='" + teacherId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",postgraduateName='" + postgraduateName + "'" + 
						",postgraduatePhone='" + postgraduatePhone + "'" + 
						",postgraduateEmail='" + postgraduateEmail + "'" + 
						",postgraduateBirth='" + postgraduateBirth + "'" + 
						",postgraduateSex='" + postgraduateSex + "'" + 
		                '}';
    }
	
}