package user.entity;


public class Tutor {
	private String tutorId;
	private String teacherId;
	private String administratorId;
	private Integer istutor;

	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	
	public String getTutorId() {
		return this.tutorId;
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
	
	public void setIstutor(Integer istutor) {
		this.istutor = istutor;
	}
	
	public Integer getIstutor() {
		return this.istutor;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Tutor that = (Tutor) o;
        return tutorId.equals(that.tutorId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(tutorId);
    }
    
    @Override
    public String toString() {
        return "Tutor{" +
				"tutorId=" + tutorId +
						",teacherId='" + teacherId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",istutor='" + istutor + "'" + 
		                '}';
    }
	
}