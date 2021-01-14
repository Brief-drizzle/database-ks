package user.entity;


public class PostgraduateParticipateProject {
	private String postgraduateId;
	private String participateProjectId;

	public void setPostgraduateId(String postgraduateId) {
		this.postgraduateId = postgraduateId;
	}
	
	public String getPostgraduateId() {
		return this.postgraduateId;
	}
	
	public void setParticipateProjectId(String participateProjectId) {
		this.participateProjectId = participateProjectId;
	}
	
	public String getParticipateProjectId() {
		return this.participateProjectId;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        PostgraduateParticipateProject that = (PostgraduateParticipateProject) o;
        return postgraduateId.equals(that.postgraduateId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(postgraduateId);
    }
    
    @Override
    public String toString() {
        return "PostgraduateParticipateProject{" +
				"postgraduateId=" + postgraduateId +
						",participateProjectId='" + participateProjectId + "'" + 
		                '}';
    }
	
}