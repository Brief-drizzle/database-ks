package user.entity;


public class Teach {
	private String instructorId;
	private String courseId;

	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	
	public String getInstructorId() {
		return this.instructorId;
	}
	
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseId() {
		return this.courseId;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Teach that = (Teach) o;
        return instructorId.equals(that.instructorId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(instructorId);
    }
    
    @Override
    public String toString() {
        return "Teach{" +
				"instructorId=" + instructorId +
						",courseId='" + courseId + "'" + 
		                '}';
    }
	
}