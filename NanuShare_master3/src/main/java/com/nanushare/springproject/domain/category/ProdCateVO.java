package com.nanushare.springproject.domain.category;

public class ProdCateVO {
	private int prodCateId;
	private String prodCateName;
	private int prodCateOrder;
	private int prodCateParantId;
	
	public ProdCateVO(int prodCateId, String prodCateName, int prodCateOrder, int prodCateParantId) {
		super();
		this.prodCateId = prodCateId;
		this.prodCateName = prodCateName;
		this.prodCateOrder = prodCateOrder;
		this.prodCateParantId = prodCateParantId;
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

	public int getProdCateParantId() {
		return prodCateParantId;
	}

	public void setProdCateParantId(int prodCateParantId) {
		this.prodCateParantId = prodCateParantId;
	}

	@Override
	public String toString() {
		return "ProdCateVO [prodCateId=" + prodCateId + ", prodCateName=" + prodCateName + ", prodCateOrder="
				+ prodCateOrder + ", prodCateParantId=" + prodCateParantId + "]";
	}
	
	
	
	
}
