package user.entity;


public class TeacherSubject {
	private String subjectId;
	private String teacherId;

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	
	public String getSubjectId() {
		return this.subjectId;
	}
	
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	
	public String getTeacherId() {
		return this.teacherId;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        TeacherSubject that = (TeacherSubject) o;
        return subjectId.equals(that.subjectId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(subjectId);
    }
    
    @Override
    public String toString() {
        return "TeacherSubject{" +
				"subjectId=" + subjectId +
						",teacherId='" + teacherId + "'" + 
		                '}';
    }
	
}