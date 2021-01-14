package user.entity;


public class Instructor {
	private String instructorId;
	private String teacherId;
	private String administratorId;
	private Integer isinstructor;

	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	
	public String getInstructorId() {
		return this.instructorId;
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
	
	public void setIsinstructor(Integer isinstructor) {
		this.isinstructor = isinstructor;
	}
	
	public Integer getIsinstructor() {
		return this.isinstructor;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Instructor that = (Instructor) o;
        return instructorId.equals(that.instructorId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(instructorId);
    }
    
    @Override
    public String toString() {
        return "Instructor{" +
				"instructorId=" + instructorId +
						",teacherId='" + teacherId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",isinstructor='" + isinstructor + "'" + 
		                '}';
    }
	
}