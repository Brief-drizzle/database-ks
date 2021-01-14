package user.entity;

import java.util.Date;

public class User {
	private String userid;
	private String usercategoryId;
	private String password;
	private Date lastlogintime;
	private String lastloginip;

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getUserid() {
		return this.userid;
	}
	
	public void setUsercategoryId(String usercategoryId) {
		this.usercategoryId = usercategoryId;
	}
	
	public String getUsercategoryId() {
		return this.usercategoryId;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}
	
	public Date getLastlogintime() {
		return this.lastlogintime;
	}
	
	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}
	
	public String getLastloginip() {
		return this.lastloginip;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        User that = (User) o;
        return userid.equals(that.userid);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(userid);
    }
    
    @Override
    public String toString() {
        return "User{" +
				"userid=" + userid +
						",usercategoryId='" + usercategoryId + "'" + 
						",password='" + password + "'" + 
						",lastlogintime='" + lastlogintime + "'" + 
						",lastloginip='" + lastloginip + "'" + 
		                '}';
    }
	
}