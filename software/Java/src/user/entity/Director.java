package user.entity;


public class Director {
	private String directorId;
	private String teacherId;
	private String administratorId;
	private String subjectId;
	private Integer isDirector;

	public void setDirectorId(String directorId) {
		this.directorId = directorId;
	}
	
	public String getDirectorId() {
		return this.directorId;
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
	
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	
	public String getSubjectId() {
		return this.subjectId;
	}
	
	public void setIsDirector(Integer isDirector) {
		this.isDirector = isDirector;
	}
	
	public Integer getIsDirector() {
		return this.isDirector;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Director that = (Director) o;
        return directorId.equals(that.directorId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(directorId);
    }
    
    @Override
    public String toString() {
        return "Director{" +
				"directorId=" + directorId +
						",teacherId='" + teacherId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",subjectId='" + subjectId + "'" + 
						",isDirector='" + isDirector + "'" + 
		                '}';
    }
	
}