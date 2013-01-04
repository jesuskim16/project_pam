<%@page import="ITFree.PAM.Seller.Model.Client.ClientRegDao"%>
<%@page import="ITFree.PAM.Seller.Model.Client.ClientRegDaoImp"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String model_code = request.getParameter("model_code");
	String price_name = request.getParameter("price_name");
	ClientRegDao crDao = new ClientRegDaoImp();
	Integer rebate_price = crDao.searchRebate(model_code, price_name);
	out.println(rebate_price);
%>
