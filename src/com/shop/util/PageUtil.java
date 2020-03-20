package com.shop.util;

import java.util.List;

//分页工具类
public class PageUtil {

	//分页查询的数据
	private List list;
	//每页显示条数
	private Integer pageSize = 12;
	//当前页
	private Integer pageNum;
	//开始下标索引
	private Integer StartIndex;
	//记录总数
	private Integer totalRecords;
	//总页数
	private Integer totalPage;
	//第一页
	private Integer firstPage;
	//最后一页
	private Integer lastPage;
	//上一页
	private Integer pre;
	//下一页
	private Integer next;
	//分页请求
	private String pageRequest;
	//用于记录模糊条件
	private String likename;
	//显示页码
	private int startPage;
	private int endPage;
	

	/**有参构造  总记录数用来计算总页数。   当前页用来求开始小标索引*/
	public PageUtil(int totalRecords,int pageNum) {
		this.pageNum=pageNum;
		this.totalRecords = totalRecords;
		this.firstPage=1;
		
		//需要计算出开始小标索引 		公式：开始小标索引=（当前页-1）*开始下标索引
		StartIndex = (pageNum-1)*pageSize;
		
		//需要计算出总页数 	   公式：开始页数=总记录数%每页显示条数==0？/每页显示条数：总记录数/每页显示条数+1；
		totalPage = totalRecords % pageSize ==0 ? totalRecords/pageSize : totalRecords/pageSize+1;
		
//		if(totalPage<=9) {
//			startPage = 1;
//			endPage = totalPage;
//		}else {
//			startPage = pageNum-4;
//			endPage = endPage+4;
//			if(startPage<1) {
//				startPage=1;
//				endPage=9;
//			}
//			if(endPage>totalPage) {
//				endPage = totalPage;
//				startPage = totalPage-8;
//			}
//		}
//		//上一页
//		if(this.pageNum>1) {
//			this.pre=this.pageNum-1;
//		}else {
//			this.pre=this.firstPage;
//		}
//		
//		//尾页
//		this.lastPage = this.totalPage;
//		
//		//下一页
//		if(this.pageNum<this.lastPage) {
//			this.next = this.pageNum+1;
//		}else {
//			this.next = this.lastPage;
//		}
	}
	

	@Override
	public String toString() {
		return "PageUtil [list=" + list + ", pageSize=" + pageSize + ", pageNum=" + pageNum + ", StartIndex="
				+ StartIndex + ", totalRecords=" + totalRecords + ", totalPage=" + totalPage + ", firstPage="
				+ firstPage + ", lastPage=" + lastPage + ", pre=" + pre + ", next=" + next + ", pageRequest="
				+ pageRequest + ", likename=" + likename + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	public PageUtil() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	public Integer getStartIndex() {
		return StartIndex;
	}
	public void setStartIndex(Integer startIndex) {
		StartIndex = startIndex;
	}
	public Integer getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(Integer totalRecords) {
		this.totalRecords = totalRecords;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getFirstPage() {
		return firstPage;
	}
	public void setFirstPage(Integer firstPage) {
		this.firstPage = firstPage;
	}
	public Integer getLastPage() {
		return lastPage;
	}
	public void setLastPage(Integer lastPage) {
		this.lastPage = lastPage;
	}
	public Integer getPre() {
		return pre;
	}
	public void setPre(Integer pre) {
		this.pre = pre;
	}
	public Integer getNext() {
		return next;
	}
	public void setNext(Integer next) {
		this.next = next;
	}
	public String getPageRequest() {
		return pageRequest;
	}
	public void setPageRequest(String pageRequest) {
		this.pageRequest = pageRequest;
	}
	public String getLikename() {
		return likename;
	}
	public void setLikename(String likename) {
		this.likename = likename;
	}
}
