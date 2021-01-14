package user.entity;


public class AssistantChose {
	private String courseId;
	private String assessmentId;

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseId() {
		return this.courseId;
	}
	
	public void setAssessmentId(String assessmentId) {
		this.assessmentId = assessmentId;
	}
	
	public String getAssessmentId() {
		return this.assessmentId;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        AssistantChose that = (AssistantChose) o;
        return courseId.equals(that.courseId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(courseId);
    }
    
    @Override
    public String toString() {
        return "AssistantChose{" +
				"courseId=" + courseId +
						",assessmentId='" + assessmentId + "'" + 
		                '}';
    }
	
}