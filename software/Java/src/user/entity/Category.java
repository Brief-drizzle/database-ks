package user.entity;


public class Category {
	private String categoryId;
	private String categoryName;

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getCategoryId() {
		return this.categoryId;
	}
	
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	public String getCategoryName() {
		return this.categoryName;
	}
	

	@Override
    public boolean equals(Object o) {
        if (this == o) { return true; }
        if (o == null || getClass() != o.getClass()) {return false;}
        Category that = (Category) o;
        return categoryId.equals(that.categoryId);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(categoryId);
    }
    
    @Override
    public String toString() {
        return "Category{" +
				"categoryId=" + categoryId +
						",categoryName='" + categoryName + "'" + 
		                '}';
    }
	
}