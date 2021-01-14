package user.entity;

import java.util.Date;
import java.math.BigDecimal;

public class Project {
	private String projectId;
	private String categoryId;
	private String tutorId;
	private String administratorId;
	private String projectName;
	private Date starttime;
	private Date endtime;
	private BigDecimal allfunds;
	private Integer approveStatus;
	private Date approveTime;

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
	public String getProjectId() {
		return this.projectId;
	}
	
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getCategoryId() {
		return this.categoryId;
	}
	
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	
	public String getTutorId() {
		return this.tutorId;
	}
	
	public void setAdministratorId(String administratorId) {
		this.administratorId = administratorId;
	}
	
	public String getAdministratorId() {
		return this.administratorId;
	}
	
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getProjectName() {
		return this.projectName;
	}
	
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	
	public Date getStarttime() {
		return this.starttime;
	}
	
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	
	public Date getEndtime() {
		return this.endtime;
	}
	
	public void setAllfunds(BigDecimal allfunds) {
		this.allfunds = allfunds;
	}
	
	public BigDecimal getAllfunds() {
		return this.allfunds;
	}
	
	public void setApproveStatus(Integer approveStatus) {
		this.approveStatus = approveStatus;
	}
	
	public Integer getApproveStatus() {
		return this.approveStatus;
	}
	
	public void setApproveTime(Date approveTime) {
		this.approveTime = approveTime;
	}
	
	public Date getApproveTime() {
		return this.approveTime;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Project that = (Project) o;
        return projectId.equals(that.projectId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(projectId);
    }
    
    @Override
    public String toString() {
        return "Project{" +
				"projectId=" + projectId +
						",categoryId='" + categoryId + "'" + 
						",tutorId='" + tutorId + "'" + 
						",administratorId='" + administratorId + "'" + 
						",projectName='" + projectName + "'" + 
						",starttime='" + starttime + "'" + 
						",endtime='" + endtime + "'" + 
						",allfunds='" + allfunds + "'" + 
						",approveStatus='" + approveStatus + "'" + 
						",approveTime='" + approveTime + "'" + 
		                '}';
    }
	
}