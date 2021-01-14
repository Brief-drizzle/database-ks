package user.entity;

import java.util.Date;

public class Selection {
	private String selectionId;
	private String postgraduateId;
	private String courseId;
	private Date selectionTime;

	public void setSelectionId(String selectionId) {
		this.selectionId = selectionId;
	}
	
	public String getSelectionId() {
		return this.selectionId;
	}
	
	public void setPostgraduateId(String postgraduateId) {
		this.postgraduateId = postgraduateId;
	}
	
	public String getPostgraduateId() {
		return this.postgraduateId;
	}
	
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseId() {
		return this.courseId;
	}
	
	public void setSelectionTime(Date selectionTime) {
		this.selectionTime = selectionTime;
	}
	
	public Date getSelectionTime() {
		return this.selectionTime;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Selection that = (Selection) o;
        return selectionId.equals(that.selectionId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(selectionId);
    }
    
    @Override
    public String toString() {
        return "Selection{" +
				"selectionId=" + selectionId +
						",postgraduateId='" + postgraduateId + "'" + 
						",courseId='" + courseId + "'" + 
						",selectionTime='" + selectionTime + "'" + 
		                '}';
    }
	
}