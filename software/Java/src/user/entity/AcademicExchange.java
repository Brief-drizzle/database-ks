package user.entity;

import java.util.Date;

public class AcademicExchange {
	private String academicExchangeId;
	private String administratorId;
	private String postgraduateId;
	private String tutorId;
	private String directorId;
	private String academicExchangeName;
	private String reportEnglishname;
	private String reportChinesename;
	private String country;
	private String province;
	private String city;
	private Integer quality;
	private String activityPhoto;
	private String others;
	private Integer auditStatus;
	private Date tutorAuditTime;
	private Date directorAuditTime;

	public void setAcademicExchangeId(String academicExchangeId) {
		this.academicExchangeId = academicExchangeId;
	}
	
	public String getAcademicExchangeId() {
		return this.academicExchangeId;
	}
	
	public void setAdministratorId(String administratorId) {
		this.administratorId = administratorId;
	}
	
	public String getAdministratorId() {
		return this.administratorId;
	}
	
	public void setPostgraduateId(String postgraduateId) {
		this.postgraduateId = postgraduateId;
	}
	
	public String getPostgraduateId() {
		return this.postgraduateId;
	}
	
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	
	public String getTutorId() {
		return this.tutorId;
	}
	
	public void setDirectorId(String directorId) {
		this.directorId = directorId;
	}
	
	public String getDirectorId() {
		return this.directorId;
	}
	
	public void setAcademicExchangeName(String academicExchangeName) {
		this.academicExchangeName = academicExchangeName;
	}
	
	public String getAcademicExchangeName() {
		return this.academicExchangeName;
	}
	
	public void setReportEnglishname(String reportEnglishname) {
		this.reportEnglishname = reportEnglishname;
	}
	
	public String getReportEnglishname() {
		return this.reportEnglishname;
	}
	
	public void setReportChinesename(String reportChinesename) {
		this.reportChinesename = reportChinesename;
	}
	
	public String getReportChinesename() {
		return this.reportChinesename;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public void setProvince(String province) {
		this.province = province;
	}
	
	public String getProvince() {
		return this.province;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getCity() {
		return this.city;
	}
	
	public void setQuality(Integer quality) {
		this.quality = quality;
	}
	
	public Integer getQuality() {
		return this.quality;
	}
	
	public void setActivityPhoto(String activityPhoto) {
		this.activityPhoto = activityPhoto;
	}
	
	public String getActivityPhoto() {
		return this.activityPhoto;
	}
	
	public void setOthers(String others) {
		this.others = others;
	}
	
	public String getOthers() {
		return this.others;
	}
	
	public void setAuditStatus(Integer auditStatus) {
		this.auditStatus = auditStatus;
	}
	
	public Integer getAuditStatus() {
		return this.auditStatus;
	}
	
	public void setTutorAuditTime(Date tutorAuditTime) {
		this.tutorAuditTime = tutorAuditTime;
	}
	
	public Date getTutorAuditTime() {
		return this.tutorAuditTime;
	}
	
	public void setDirectorAuditTime(Date directorAuditTime) {
		this.directorAuditTime = directorAuditTime;
	}
	
	public Date getDirectorAuditTime() {
		return this.directorAuditTime;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        AcademicExchange that = (AcademicExchange) o;
        return academicExchangeId.equals(that.academicExchangeId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(academicExchangeId);
    }
    
    @Override
    public String toString() {
        return "AcademicExchange{" +
				"academicExchangeId=" + academicExchangeId +
						",administratorId='" + administratorId + "'" + 
						",postgraduateId='" + postgraduateId + "'" + 
						",tutorId='" + tutorId + "'" + 
						",directorId='" + directorId + "'" + 
						",academicExchangeName='" + academicExchangeName + "'" + 
						",reportEnglishname='" + reportEnglishname + "'" + 
						",reportChinesename='" + reportChinesename + "'" + 
						",country='" + country + "'" + 
						",province='" + province + "'" + 
						",city='" + city + "'" + 
						",quality='" + quality + "'" + 
						",activityPhoto='" + activityPhoto + "'" + 
						",others='" + others + "'" + 
						",auditStatus='" + auditStatus + "'" + 
						",tutorAuditTime='" + tutorAuditTime + "'" + 
						",directorAuditTime='" + directorAuditTime + "'" + 
		                '}';
    }
	
}