package com.nanushare.springproject.domain.category;

public class ProdCateVO {
	private int prodCateId;
	private String prodCateName;
	private int prodCateOrder;
	private int prodCateParentId;
	
	public ProdCateVO(){}
	
	public ProdCateVO(int prodCateId, String prodCateName, int prodCateOrder, int prodCateParentId) {
		super();
		this.prodCateId = prodCateId;
		this.prodCateName = prodCateName;
		this.prodCateOrder = prodCateOrder;
		this.prodCateParentId = prodCateParentId;
	}

	public ProdCateVO(int prodCateParentId) {
		super();
		this.prodCateParentId = prodCateParentId;
	}

	public int getProdCateId() {
		return prodCateId;
	}

	public void setProdCateId(int prodCateId) {
		this.prodCateId = prodCateId;
	}

	public String getProdCateName() {
		return prodCateName;
	}

	public void setProdCateName(String prodCateName) {
		this.prodCateName = prodCateName;
	}

	public int getProdCateOrder() {
		return prodCateOrder;
	}

	public void setProdCateOrder(int prodCateOrder) {
		this.prodCateOrder = prodCateOrder;
	}

	public int getprodCateParentId() {
		return prodCateParentId;
	}

	public void setprodCateParentId(int prodCateParentId) {
		this.prodCateParentId = prodCateParentId;
	}

	@Override
	public String toString() {
		return "ProdCateVO [prodCateId=" + prodCateId + ", prodCateName=" + prodCateName + ", prodCateOrder="
				+ prodCateOrder + ", prodCateParentId=" + prodCateParentId + "]";
	}
	
	
	
	
}
