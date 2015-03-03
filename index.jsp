<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html >
<html>
<head>
<sj:head/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Using Struts with Ajax</title>
<link rel="stylesheet" href="styles/common.css" type='text/css'>
<script type="text/javascript">

$.subscribe('before', function(event,data){
	$("#status").html("processing, please wait ...");
});

$.subscribe('errorState', function(event,data) {
	alert("error state function");
});

</script>
</head>
<body>
<header>
	<div id="header_title">
		Struts & Ajax using JQuery
	</div>
</header>

<aside>
	<p>&nbsp;</p>
	<br>
	<div id="status" ></div>
	
</aside>

<section>
	<article>
	<div id="frmresult" ></div>
	
	<s:form id="details_form" action="printdetails"  method="POST"  >
		<s:textfield name="e_name" id="e_name" label="Employee Name" cssClass="input_char" size="35"/>
		<s:textfield name="e_id" id="e_id" label="Employee ID" cssClass="input_char" size="35"/>
		<s:textfield name="e_role" id="e_role" label="Employee Role" cssClass="input_char" size="50"/>
		<sj:submit 
			name="gobutton" 
			id="gobutton"  
			targets="status" 
			button="true"  
			value="Enter" 
			align="left"
			onBeforeTopics="before"
            onErrorTopics="errorState"
            
			 />
	</s:form>
	
</article>
</section>

<footer>
	<p>&nbsp;</p>
</footer>
</body>
</html>