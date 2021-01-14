package user.entity;


public class Administrators {
	private String administratorId;
	private String administratorName;
	private String administratorWork;
	private String administratorPhone;
	private String administratorEmail;

	public void setAdministratorId(String administratorId) {
		this.administratorId = administratorId;
	}
	
	public String getAdministratorId() {
		return this.administratorId;
	}
	
	public void setAdministratorName(String administratorName) {
		this.administratorName = administratorName;
	}
	
	public String getAdministratorName() {
		return this.administratorName;
	}
	
	public void setAdministratorWork(String administratorWork) {
		this.administratorWork = administratorWork;
	}
	
	public String getAdministratorWork() {
		return this.administratorWork;
	}
	
	public void setAdministratorPhone(String administratorPhone) {
		this.administratorPhone = administratorPhone;
	}
	
	public String getAdministratorPhone() {
		return this.administratorPhone;
	}
	
	public void setAdministratorEmail(String administratorEmail) {
		this.administratorEmail = administratorEmail;
	}
	
	public String getAdministratorEmail() {
		return this.administratorEmail;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Administrators that = (Administrators) o;
        return administratorId.equals(that.administratorId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(administratorId);
    }
    
    @Override
    public String toString() {
        return "Administrators{" +
				"administratorId=" + administratorId +
						",administratorName='" + administratorName + "'" + 
						",administratorWork='" + administratorWork + "'" + 
						",administratorPhone='" + administratorPhone + "'" + 
						",administratorEmail='" + administratorEmail + "'" + 
		                '}';
    }
	
}