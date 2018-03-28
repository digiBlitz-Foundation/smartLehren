<!--
Copyright: 2018 digiBlitz Foundation

License: digiBlitz Public License 1.0 (DPL) 
Administered by digiBlitz Foundation. www.digiblitz.org/dpl/

Inventor: Suresh Kannan (Maya Suresh Kannan Balabisegan ) (www.sureshkannan.org)

Authors: Suresh Kannan (Maya Suresh Kannan Balabisegan )& digiBlitz.

"Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software in accordance to the rules & restrictions of the digiBlitz Public License."
-->
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>smartLehren</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/DBlogo.png">
     <link rel="shortcut icon" href="images/DBlogo.png" />
     <link rel="stylesheet" href="css/touchTouch.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/form.css">
     
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/script.js"></script> 
     <script src="js/superfish.js"></script>
     <script src="js/touchTouch.jquery.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <script src="js/owl.carousel.js"></script> 
     <script src="js/jquery.tabs.min.js"></script>
       <script  src="js/ts_picker.js"></script>
     <script src="js/TMForm.js"></script> 
<script src="js/basic.js" type="text/javascript" ></script>
<script src="js/calendar2.js" type="text/javascript"></script>
</head>

<script type="text/javascript">

function callMapList()
{
	strURL = "./artifactMapping.html?artiMapProcess=listViewPointMap";
	window.location.href = strURL;
}



function callViewPoint(selViewPointId) {
	
	//alert('asi');
	strURL = "./artifactMapping.html?artiMapProcess=listViewBasedOnViewPoint&selVPointId="+selViewPointId;
	window.location.href = strURL; 	

}


function showArtifact() {

	//alert("test "+document.frmGroupsMap.viewId.selectedIndex+"=="+chkCount);

	
 /* if(document.frmGroupsMap.viewId.selectedIndex==0)
	{
		document.getElementById('divArtifact').style.visibility="hidden";
	}
	else
	{
		document.getElementById('divArtifact').style.visibility="visible";
	}*/
	var comboCnt =0;
	var showArtifactFlag = false;

      for(var i=0;i<document.frmGroupsMap.elements.length;i++) {
	  
		   if(document.frmGroupsMap.elements[i].type=='select-one') {

				//alert('if '+document.frmGroupsMap.elements[i].selectedIndex+"=="+comboCnt);

				if(comboCnt==0) {
					if(document.frmGroupsMap.elements[i].selectedIndex!=0) {
						showArtifactFlag=true;
					}
					else if(document.frmGroupsMap.elements[i].selectedIndex==0) {
						showArtifactFlag=false;
					}
				} 
				
				if(comboCnt==1) {
					if(document.frmGroupsMap.elements[i].selectedIndex!=0 && document.frmGroupsMap.elements[i-1].selectedIndex!=0) {
						showArtifactFlag=true;
					}
					else if(document.frmGroupsMap.elements[i].selectedIndex==0 && document.frmGroupsMap.elements[i-1].selectedIndex==0) {
						showArtifactFlag=false;
					}
				} 
			
				if(comboCnt>1) {
					if(document.frmGroupsMap.elements[i].selectedIndex!=0) {
						showArtifactFlag=false;
						break;
					}
					else if(document.frmGroupsMap.elements[i].selectedIndex==0) {
						showArtifactFlag=true;
						break;
					}
				
				}


				comboCnt++;
		   }
	  }

	  if(showArtifactFlag==true)
		  document.getElementById('divArtifact').style.visibility="visible";
	  else 
		  document.getElementById('divArtifact').style.visibility="hidden";	
}






function myValidate(){
	if(document.getElementById("viewId").value=="")
{alert("Select View point");
 document.getElementById("viewId").focus();
 return false;}
	

grpSize=document.getElementById("grpSize").value;

		for(d=0;d<grpSize;d++){
		
		masteName=document.getElementById("masteName"+d).value;

//alert(masteName);
	
	if(document.getElementById("viewId").value!="")
{
if(document.getElementById("grpsDet"+d)!=null){
if(document.getElementById("grpsDet"+d).value==""){

alert("Select any one"+masteName);
document.getElementById("grpsDet"+d).focus();
return false;
}



}
}
	}	
		

	 return true;
	 
	 
}
	



var requ;
  
function retrieveURL(methodName) {  
 
// alert(methodName);



  var url = null;

		viewPntId=document.getElementById("viewId").value;
		
	grpSize=document.getElementById("grpSize").value;
	lobId=null;
	viewId=null;
	grpId=null;
	procDom=null;
	
	
	
	
	for(d=0;d<grpSize;d++){	
	if(document.getElementById("grpsDet"+d)!=null){
	//masterId=document.getElementById("masterId"+d).value;
	var grpDet=document.getElementById("grpsDet"+d).value;	
	
	if(grpDet!=null && lobId==null){	
var splitval = grpDet.split("#");	
	
	lobId=splitval[1];
	}else if(grpDet!=null && lobId!=null && viewId==null){
	
	var splitval = grpDet.split("#");	
	
	viewId=splitval[1];
	
	}else if(grpDet!=null && lobId!=null && viewId!=null && grpId==null){
	
	var splitval = grpDet.split("#");	
	
	grpId=splitval[1];
	
	}else if(grpDet!=null && lobId!=null && viewId!=null && grpId!=null && procDom==null){
	
	var splitval = grpDet.split("#");	
	
	procDom=splitval[1];
	
	}
	
}	
	}
	
if(viewPntId!=null && lobId!=null && viewId!=null && grpId!=null && procDom!=null)	{	
 urlsd = "UsrSignupAjax.html?cmd="+escape(methodName)+"&viewPntId="+escape(viewPntId)+"&lobId="+escape(lobId)+"&viewId="+escape(viewId)+"&grpId="+escape(grpId)+"&domProcId="+escape(procDom);  
 
 } 
  
      if (window.XMLHttpRequest) {
           requ = new XMLHttpRequest();
		   
       } else if (window.ActiveXObject) {
           requ = new ActiveXObject("Microsoft.XMLHTTP");
       }
     
           requ.onreadystatechange = displayExistsStatus;
		 
           
       requ.open("GET", urlsd, true);
       requ.send(null);

  
  }  
  
  
  function displayExistsStatus() {
	if (requ.readyState == 4) { // Complete
		if (requ.status == 200) { // OK response  
			var arnameXML = requ.responseXML.getElementsByTagName("outValue")[0]; 
			var arnameText = arnameXML.childNodes[0].nodeValue; 		
			
			 updateHTML(arnameXML); 
			
		} 
		else {
			alert("Problem: " + requ.statusText);
		}
	}
}
  
  
   function updateHTML(arnameXML) 
    { 
        //The node valuse will give actual data 
        var arnameText = arnameXML.childNodes[0].nodeValue; 

		if(arnameText != "false")
		{
			alert("Records are already Mapped. Choose another set");
			document.getElementById("viewId").value="";
			grpSizes=document.getElementById("grpSize").value;
		
		for(d=0;d<grpSizes;d++){
		if(document.getElementById("grpsDet"+d)!=null){
		document.getElementById("grpsDet"+d).value="";
		}
		}
		document.getElementById("subutton").disabled = true;
		
		document.getElementById("subutton").className='styleNew';
		}else{
		
		document.getElementById("subutton").disabled = false;
	
		document.getElementById("subutton").className='gradBtn';
		
		}
		      
    } 


</script>




<style type="text/css">

.styleNew {font-family:Tahoma; color:#FFF;	font-size:11px;	font-weight:bold; background:url(file:///C|/Users/user/Downloads/Artifact_pages/images/grad_02.jpg); cursor:hand;
			height:20px; background-color:#aaaaaa; border:1px solid #003366;}


</style>
</head>


 <body class="page1" id="top">
 <headere><div>
  
<div><%@ include file = "../../include/header.jsp" %></div>
<div  > <%@ include file = "../../include/Hmenu.jsp" %></div>   

</div></headere>
<div class="content">
  <div class="container_12 ">
      <div>&nbsp;</div>
      <div style=" font-size: 15px; color:black;">
  <table width=100% height="350" border="1" cellpadding="0" cellspacing="0"  class="content_new" align="center">
           

    <tr>
	
      <td  align="center" valign="middle" class="tableCommonBg" >
	  <table width="760" border="0" align="center" cellpadding="0" cellspacing="5" id="centerTab" style="border:thin;border-style:groove;">
        <tr>
          <td width="853" class="subDeptTablePad"><!-- CONTENTS START HERE -->
              <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="tblInnerContainer">
                <% String success = (String)request.getAttribute("success");%>
                <tr style="border-bottom-style:groove;border-bottom-width:thin">
                  <td height="21" colspan="5" class="tblMainHead"> <strong>View Point Mapping with Groups :</strong>
                    <% if(success!=null && success != ""){%>
                      <font color="#FF0000" style="font-size:10px">Note: Successfully Mapped</font>
                      <% }else{%>
                      <font color="#FF0000" style="font-size:10px">Note: Please select any value from all the dropdowns</font>
                  <%}%></td>
                </tr>
                <form name="frmGroupsMap" id="frmGroupsMap" action="artifactMapping.html"  method="post" onsubmit="return myValidate();">
                  <input type="hidden" name="artiMapProcess" value="insertArtifactMap">
                  <tr>
                    <td colspan="4" align="right" ><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="formLayout">
                        <%String viewPointId=(String)request.getAttribute("viewPointId");
  %>
                        <tr class="tableInner">
                          <td height="21" valign="middle" class="tableLeft"><strong>View Point:</strong></td>
                          <td height="21" valign="middle" class="tableRight"><select name="viewId" id="viewId" class="selectboxOne" onchange="callViewPoint(this.value);">
                              <option selected="selected" value="">Select One</option>
                              <%
									 ArrayList viewList = (ArrayList) request.getAttribute("viewList");
          					 if(viewList!=null && viewList.size()!=0){
							Iterator it = viewList.iterator();
							while(it.hasNext()){
								String[] s = (String[])it.next();
								String viewId = s[0];
								String viewName = s[1];		
								
											
								if (viewId.equals(viewPointId)){
											 %>
                              <option value="<%=viewId%>" selected="selected"><%=viewName%></option>
                              <%
											 }
								 
					           else{
					           %>
                              <option  value="<%=viewId%>" ><%=viewName%></option>
                              <%
					           }
										}}
									


							%>
                          </select></td>
                        </tr>
                        <%
				
				 ArrayList grpList = (ArrayList) request.getAttribute("grpList");
				 
				  if(grpList!=null && grpList.size()!=0){
				   grpList.remove(grpList.size() - 1);
							 int i=0; 
							 int iViewsCnt=0;
							Iterator itgrp = grpList.iterator();
							while(itgrp.hasNext()){
								String[] sgrp = (String[])itgrp.next();
								String masteId = sgrp[0];
								String masteName = sgrp[1];
			
				 ArrayList grpDetList = (ArrayList) request.getAttribute("grpDetList");
				 
          					 if(grpDetList!=null && grpDetList.size()!=0){
							
							 String layerId=null;
							Iterator itlob = grpDetList.iterator();
							%>
                        <tr class="tableInner">
                          <td height="21" class="tableLeft"><strong><%=masteName%>:</strong></td>
                          <td height="21" class="tableRight"><input type="hidden" name="masteName<%=i%>" id="masteName<%=i%>" value="<%=masteName%>" />
                              <select name="grpsDet<%=i%>" id="grpsDet<%=i%>" class="selectboxOne" onchange="retrieveURL('mappingExist');">
                                <option selected="selected" value="">Select One</option>
                                <%	
							while(itlob.hasNext()){
								String[] slob = (String[])itlob.next();
								String masteIds = slob[0];
								String masteNames = slob[1];	
								String layerVak = slob[2];
								 layerId = slob[3];	
								String sqe = slob[4];
								
			              if(masteId.equals(masteIds)){
						
						 String cntValue=masteIds+"#"+layerId+"#"+sqe;
						if(i==1 ){
							String tempVpointName="";
							
							ArrayList viewPointList = (ArrayList) request.getAttribute("viewPointList");
							//System.out.println("viewPointList=="+viewPointList.size());
							
							if(viewPointList!=null && viewPointList.size()!=0 && iViewsCnt < viewPointList.size()){
								Iterator itViewPoint = viewPointList.iterator();
								while(itViewPoint.hasNext()){
									String[] sViewPoint = (String[])itViewPoint.next();
									String vPointId = sViewPoint[0];
									String vPointName = sViewPoint[1];	
									tempVpointName=vPointName;
									 String cntValue1=masteIds+"#"+vPointId+"#"+sqe;
									//System.out.println("inside if"+i+"=====vPointName==="+vPointName+"=====cntValue1==="+cntValue1);
							
											 %>
                                <option value="<%=cntValue1%>"><%=vPointName%></option>
                                <%
								iViewsCnt++;
											 }}}else {
												// System.out.println("inside else"+i);%>
                                <option value="<%=cntValue%>"><%=layerVak%></option>
                                <%}
											 }
						
											 } %>
                                <%
				

				
							%>
                              </select>
                              <%}
				%>
                          </td>
                        </tr>
                        <%
					
			i++;}
				  }
										
%>
                        <input type="hidden" name="grpSize" id="grpSize" value="<%=grpList.size()%>" />
                        <tr>
                          <td height="21" colspan="5" align="center" class="alignCenter"><input align="middle" type="submit" value="Map" name="subutton" id="subutton" class="styleNew" disabled="disabled"/></td>
                        </tr>
                      </table>
                        <table align="center">
                          <tr>
                            <td align="right"><input name="button" type="button" class="button-add" onclick="callMapList();" value="Go to List Page" align="middle" style="color:#3366FF;"/></td>
                          </tr>
                    </table></td>
                  </tr>
                </form>
            </table></td>
        </tr>
        <!-- Based on id -->
        <tr>
          <td></td>
        </tr>
        <!--end of the file-->
      </table></td>
    </tr>
             
	<tr><td>&nbsp;</td></tr>
  </table></div></div></div>
<!--=======footer=================================-->
 <footer>			 
			
                  <div class="container_12">
     <br>
       <%@ include file = "../../include/footer-in.jsp" %>
      </div>
   
               
 </footer>
</body>
</html>
