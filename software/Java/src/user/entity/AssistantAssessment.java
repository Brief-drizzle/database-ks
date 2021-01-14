package user.entity;

import java.util.Date;

public class AssistantAssessment {
	private String assessmentId;
	private String postgraduateId;
	private String administratorId;
	private String instructorId;
	private String selfAccount;
	private String instructorEvaluate;
	private Integer evaluateResult;
	private Integer examineResult;
	private Date examineTime;

	public void setAssessmentId(String assessmentId) {
		this.assessmentId = assessmentId;
	}
	
	public String getAssessmentId() {
		return this.assessmentId;
	}
	
	public void setPostgraduateId(String postgraduateId) {
		this.postgraduateId = postgraduateId;
	}
	
	public String getPostgraduateId() {
		return this.postgraduateId;
	}
	
	public void setAdministratorId(String administratorId) {
		this.administratorId = administratorId;
	}
	
	public String getAdministratorId() {
		return this.administratorId;
	}
	
	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	
	public String getInstructorId() {
		return this.instructorId;
	}
	
	public void setSelfAccount(String selfAccount) {
		this.selfAccount = selfAccount;
	}
	
	public String getSelfAccount() {
		return this.selfAccount;
	}
	
	public void setInstructorEvaluate(String instructorEvaluate) {
		this.instructorEvaluate = instructorEvaluate;
	}
	
	public String getInstructorEvaluate() {
		return this.instructorEvaluate;
	}
	
	public void setEvaluateResult(Integer evaluateResult) {
		this.evaluateResult = evaluateResult;
	}
	
	public Integer getEvaluateResult() {
		return this.evaluateResult;
	}
	
	public void setExamineResult(Integer examineResult) {
		this.examineResult = examineResult;
	}
	
	public Integer getExamineResult() {
		return this.examineResult;
	}
	
	public void setExamineTime(Date examineTime) {
		this.examineTime = examineTime;
	}
	
	public Date getExamineTime() {
		return this.examineTime;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        AssistantAssessment that = (AssistantAssessment) o;
        return assessmentId.equals(that.assessmentId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(assessmentId);
    }
    
    @Override
    public String toString() {
        return "AssistantAssessment{" +
				"assessmentId=" + assessmentId +
						",postgraduateId='" + postgraduateId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",instructorId='" + instructorId + "'" + 
						",selfAccount='" + selfAccount + "'" + 
						",instructorEvaluate='" + instructorEvaluate + "'" + 
						",evaluateResult='" + evaluateResult + "'" + 
						",examineResult='" + examineResult + "'" + 
						",examineTime='" + examineTime + "'" + 
		                '}';
    }
	
}