package com.shop.util;

import java.util.List;

//��ҳ������
public class PageUtil {

	//��ҳ��ѯ������
	private List list;
	//ÿҳ��ʾ����
	private Integer pageSize = 12;
	//��ǰҳ
	private Integer pageNum;
	//��ʼ�±�����
	private Integer StartIndex;
	//��¼����
	private Integer totalRecords;
	//��ҳ��
	private Integer totalPage;
	//��һҳ
	private Integer firstPage;
	//���һҳ
	private Integer lastPage;
	//��һҳ
	private Integer pre;
	//��һҳ
	private Integer next;
	//��ҳ����
	private String pageRequest;
	//���ڼ�¼ģ������
	private String likename;
	//��ʾҳ��
	private int startPage;
	private int endPage;
	

	/**�вι���  �ܼ�¼������������ҳ����   ��ǰҳ������ʼС������*/
	public PageUtil(int totalRecords,int pageNum) {
		this.pageNum=pageNum;
		this.totalRecords = totalRecords;
		this.firstPage=1;
		
		//��Ҫ�������ʼС������ 		��ʽ����ʼС������=����ǰҳ-1��*��ʼ�±�����
		StartIndex = (pageNum-1)*pageSize;
		
		//��Ҫ�������ҳ�� 	   ��ʽ����ʼҳ��=�ܼ�¼��%ÿҳ��ʾ����==0��/ÿҳ��ʾ�������ܼ�¼��/ÿҳ��ʾ����+1��
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
//		//��һҳ
//		if(this.pageNum>1) {
//			this.pre=this.pageNum-1;
//		}else {
//			this.pre=this.firstPage;
//		}
//		
//		//βҳ
//		this.lastPage = this.totalPage;
//		
//		//��һҳ
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
