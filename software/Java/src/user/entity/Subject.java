package user.entity;


public class Subject {
	private String subjectId;
	private String directorId;
	private String subjectName;
	private String subjectCategoryname;
	private String subjectIntroduction;

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	
	public String getSubjectId() {
		return this.subjectId;
	}
	
	public void setDirectorId(String directorId) {
		this.directorId = directorId;
	}
	
	public String getDirectorId() {
		return this.directorId;
	}
	
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
	public String getSubjectName() {
		return this.subjectName;
	}
	
	public void setSubjectCategoryname(String subjectCategoryname) {
		this.subjectCategoryname = subjectCategoryname;
	}
	
	public String getSubjectCategoryname() {
		return this.subjectCategoryname;
	}
	
	public void setSubjectIntroduction(String subjectIntroduction) {
		this.subjectIntroduction = subjectIntroduction;
	}
	
	public String getSubjectIntroduction() {
		return this.subjectIntroduction;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Subject that = (Subject) o;
        return subjectId.equals(that.subjectId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(subjectId);
    }
    
    @Override
    public String toString() {
        return "Subject{" +
				"subjectId=" + subjectId +
						",directorId='" + directorId + "'" + 
						",subjectName='" + subjectName + "'" + 
						",subjectCategoryname='" + subjectCategoryname + "'" + 
						",subjectIntroduction='" + subjectIntroduction + "'" + 
		                '}';
    }
	
}