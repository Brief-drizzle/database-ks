package user.entity;


public class Usercategory {
	private String usercategoryId;
	private String usercategoryName;
	private Integer nowId;

	public void setUsercategoryId(String usercategoryId) {
		this.usercategoryId = usercategoryId;
	}
	
	public String getUsercategoryId() {
		return this.usercategoryId;
	}
	
	public void setUsercategoryName(String usercategoryName) {
		this.usercategoryName = usercategoryName;
	}
	
	public String getUsercategoryName() {
		return this.usercategoryName;
	}
	
	public void setNowId(Integer nowId) {
		this.nowId = nowId;
	}
	
	public Integer getNowId() {
		return this.nowId;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Usercategory that = (Usercategory) o;
        return usercategoryId.equals(that.usercategoryId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(usercategoryId);
    }
    
    @Override
    public String toString() {
        return "Usercategory{" +
				"usercategoryId=" + usercategoryId +
						",usercategoryName='" + usercategoryName + "'" + 
						",nowId='" + nowId + "'" + 
		                '}';
    }
	
}