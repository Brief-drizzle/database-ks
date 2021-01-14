package user.entity;

import java.util.Date;
import java.math.BigDecimal;

public class ParticipateProject {
	private String participateProjectId;
	private String projectId;
	private String tutorId;
	private String mainwork;
	private Date participateStarttime;
	private Date participateEndtime;
	private Integer participateApprovestatus;
	private Date participateApprovetime;
	private BigDecimal costequivalent;
	private Integer isdirector;

	public void setParticipateProjectId(String participateProjectId) {
		this.participateProjectId = participateProjectId;
	}
	
	public String getParticipateProjectId() {
		return this.participateProjectId;
	}
	
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
	public String getProjectId() {
		return this.projectId;
	}
	
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	
	public String getTutorId() {
		return this.tutorId;
	}
	
	public void setMainwork(String mainwork) {
		this.mainwork = mainwork;
	}
	
	public String getMainwork() {
		return this.mainwork;
	}
	
	public void setParticipateStarttime(Date participateStarttime) {
		this.participateStarttime = participateStarttime;
	}
	
	public Date getParticipateStarttime() {
		return this.participateStarttime;
	}
	
	public void setParticipateEndtime(Date participateEndtime) {
		this.participateEndtime = participateEndtime;
	}
	
	public Date getParticipateEndtime() {
		return this.participateEndtime;
	}
	
	public void setParticipateApprovestatus(Integer participateApprovestatus) {
		this.participateApprovestatus = participateApprovestatus;
	}
	
	public Integer getParticipateApprovestatus() {
		return this.participateApprovestatus;
	}
	
	public void setParticipateApprovetime(Date participateApprovetime) {
		this.participateApprovetime = participateApprovetime;
	}
	
	public Date getParticipateApprovetime() {
		return this.participateApprovetime;
	}
	
	public void setCostequivalent(BigDecimal costequivalent) {
		this.costequivalent = costequivalent;
	}
	
	public BigDecimal getCostequivalent() {
		return this.costequivalent;
	}
	
	public void setIsdirector(Integer isdirector) {
		this.isdirector = isdirector;
	}
	
	public Integer getIsdirector() {
		return this.isdirector;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        ParticipateProject that = (ParticipateProject) o;
        return participateProjectId.equals(that.participateProjectId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(participateProjectId);
    }
    
    @Override
    public String toString() {
        return "ParticipateProject{" +
				"participateProjectId=" + participateProjectId +
						",projectId='" + projectId + "'" + 
						",tutorId='" + tutorId + "'" + 
						",mainwork='" + mainwork + "'" + 
						",participateStarttime='" + participateStarttime + "'" + 
						",participateEndtime='" + participateEndtime + "'" + 
						",participateApprovestatus='" + participateApprovestatus + "'" + 
						",participateApprovetime='" + participateApprovetime + "'" + 
						",costequivalent='" + costequivalent + "'" + 
						",isdirector='" + isdirector + "'" + 
		                '}';
    }
	
}