<!--
Copyright: 2018 digiBlitz Foundation

License: digiBlitz Public License 1.0 (DPL) 
Administered by digiBlitz Foundation. www.digiblitz.org/dpl/

Inventor: Suresh Kannan (Maya Suresh Kannan Balabisegan ) (www.sureshkannan.org)

Authors: Suresh Kannan (Maya Suresh Kannan Balabisegan )& digiBlitz.

"Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software in accordance to the rules & restrictions of the digiBlitz Public License."
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
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
 
 <script language="javascript">
 
 function approved() {
	 
	 var chkBoxCnt = document.artifactlist.chk.length;
	  
	 		 if(chkBoxCnt!=undefined && chkBoxCnt!='undefined')
	 			   {
	 					for(var i=0;i<chkBoxCnt;i++)
	 					{

	 						 	if(document.artifactlist.chk[i].checked==true)
	 						 {
	 								var StageValue= document.artifactlist.StageValue[i].value;
	 								var StageName= document.artifactlist.StageName[i].value;
	 								var ArtifactId= document.artifactlist.ArtifactId[i].value;
	 								var ProcessId= document.artifactlist.ProcessId[i].value;
									var stageNo= document.artifactlist.StageNo[i].value;
									var ReqquestId= document.artifactlist.ReqquestId[i].value;

	 								 strURL = "./SysMgmt.html?process=WSapproved&StageValue="+StageValue+"&StageName="+StageName+"&ArtifactId="+ArtifactId+"&ProcessId="+ProcessId+"&StageNo="+stageNo+"&RequestID="+ReqquestId;
	                                  window.location.href = strURL;


	 						 }
	 						
	 					}
	 			   }


	 			   else{
	 			 
	 			   	if(document.artifactlist.chk.checked==true)
	 			{

	 var StageValue= document.artifactlist.StageValue.value;
	 								var StageName= document.artifactlist.StageName.value;
	 								var ArtifactId= document.artifactlist.ArtifactId.value;
	 								var ProcessId= document.artifactlist.ProcessId.value;
									var stageNo= document.artifactlist.StageNo.value;
                                    var ReqquestId= document.artifactlist.ReqquestId.value;
									
	 								 strURL = "./SysMgmt.html?process=WSapproved&StageValue="+StageValue+"&StageName="+StageName+"&ArtifactId="+ArtifactId+"&ProcessId="+ProcessId+"&StageNo="+stageNo+"&RequestID="+ReqquestId;
	                                  window.location.href = strURL;



	 			}
	 			}




	 	 
	 		
	 	}
	  
	   function denied() {
	 		
	 var chkBoxCnt = document.artifactlist.chk.length;
	 		 if(chkBoxCnt!=undefined && chkBoxCnt!='undefined')
	 			   {
	 					for(var i=0;i<chkBoxCnt;i++)
	 					{

	 						 	if(document.artifactlist.chk[i].checked==true)
	 						 {
	 								
	 var StageValue= document.artifactlist.StageValue[i].value;
	 								var StageName= document.artifactlist.StageName[i].value;
	 								var ArtifactId= document.artifactlist.ArtifactId[i].value;
	 								var ProcessId= document.artifactlist.ProcessId[i].value;
									var stageNo= document.artifactlist.StageNo[i].value;
									var ReqquestId= document.artifactlist.ReqquestId[i].value;
									
	 								 strURL = "./SysMgmt.html?process=WSdenied&StageValue="+StageValue+"&StageName="+StageName+"&ArtifactId="+ArtifactId+"&ProcessId="+ProcessId+"&StageNo="+stageNo;
	       window.location.href = strURL;


	 						 }
	 						
	 					}
	 			   }


	 			   else{
	 			   
	 			   	if(document.artifactlist.chk.checked==true)
	 			{
	 					
	 					var StageValue= document.artifactlist.StageValue.value;
	 								var StageName= document.artifactlist.StageName.value;
	 								var ArtifactId= document.artifactlist.ArtifactId.value;
	 								var ProcessId= document.artifactlist.ProcessId.value;
                                   var stageNo= document.artifactlist.StageNo.value;
								   var ReqquestId= document.artifactlist.ReqquestId.value;
								   
	  strURL = "./SysMgmt.html?process=WSdenied&StageValue="+StageValue+"&StageName="+StageName+"&ArtifactId="+ArtifactId+"&ProcessId="+ProcessId+"&StageNo="+stageNo+"&RequestID="+ReqquestId;
	  
	       window.location.href = strURL;
	 			}
	 			   }


	 	 
	 	}

 
 
 

//window.onload=call();
 
 

	 </script>
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
  <table width=100% height="350" border="1" cellpadding="0" cellspacing="0" class="content_new" align="center">
       
    <tr>
	
      <td  align="center" valign="middle" class="tableCommonBg" >
	  
	  
	  
	  
	  
	  <table width="887" border="0" align="center" cellpadding="0" cellspacing="0" id="mainTab" style="border:thin;border-style:groove;min-height:60px;">
        <tr>
          <td valign="top" class="tableCommonBg">
	
					<table width="100%" border="0" align="center" cellpadding="" cellspacing="" id="centerTab">
                    <tr>
                      <form action="SysMgmt.html" name="artifactlist" id="artifactlist">
                        <td>
						<table  border="0" cellpadding="0" cellspacing="0" width="100%" align="left" >
						<tr style="border-bottom-style:groove;border-bottom-width:thin"><td colspan="7"><img src="images/services_logo.png" alt="Business Services Voting List" width="20px" height="20px" />
						
						<strong>Business Services Voting List</strong></td></tr>
                            <tr style="border-bottom-style:groove;border-bottom-width:thin">
                              <td width="59" height="21" class="tblRowHeadTwo"><strong>Serial Id</strong>
                             </td>
                              <td width="137" height="21" class="tblRowHeadTwo"><strong>Artifact Name</strong>
                              </td>
                              <td width="166" height="21" class="tblRowHeadTwo"><strong>Artifact Description</strong>
                             </td>
                              <td width="169" height="21" class="tblRowHeadTwo"><strong>Date of Request Raised</strong>
                              </td>
                              <td width="116" height="21" class="tblRowHeadTwo"><strong>Stage Name</strong>
                              </td>
                              <td width="147" height="21" class="tblRowHeadTwo"><strong>Actions</strong>
                              </td>
                              <td width="89" height="21" class="tblRowHeadTwo"><strong>Comments</strong>
                              </td>
                            </tr>
                            <%
   Map <Integer,String[]> artifactlist=(HashMap)request.getAttribute("WSvotinglist");
    //System.out.println  ("artifactData"+artifactData.size());                                           
                                                 
   if (artifactlist != null && artifactlist.size() != 0) {  
                                                            
   Iterator iter = artifactlist.entrySet().iterator();
                                                                //String [] userType = {ID, name };
                                                                while (iter.hasNext()) {
                                                                	Map.Entry mEntry = (Map.Entry) iter.next();
                                                                	
                                                                	String [] artiType=(String[])mEntry.getValue();
                                                                	int id=(Integer)mEntry.getKey();
                                                                	String ArtifactName=artiType[0];
                                                                	String ArtifactDescription=artiType[1];
                                                                	String DORequest=artiType[2]; 
                                                                	String StageName=artiType[3];
                                                                	String Comments=artiType[4];
                                                                	String ProcessId=artiType[5];
                                                                	String ArtifactId=artiType[6];
                                                                	String StageValue=artiType[7];
																	String StageNo=artiType[8];
																	String reqId=artiType[9];
																	
																	 if(Comments==null){
																	 Comments="NA";
																	 }

                                                %>
                            <tr height="25px">
                              <td valign="middle"><input type="radio" name="chk" value="<%=id%>" /></td>
                              <td valign="middle"><%=ArtifactName%></td>
                              <td align="left" valign="middle"><%=ArtifactDescription%></td>
                              <td align="left" valign="middle"><%=DORequest%></td>
                              <td valign="middle"><%=StageName%></td>
                              <td valign="middle"><input name="button" type="button" onclick="approved()" value="Approve" class="button-add" style="border-bottom-style:groove;border-bottom-width:thin;border-bottom-color:#66CCFF;color:#3366FF;"/>
                                  <input name="button" type="button" onclick="denied()" value="Deny" class="button-add" style="border-bottom-style:groove;border-bottom-width:thin;border-bottom-color:#66CCFF;color:#3366FF;"/>
                                <input type="hidden" value="<%=StageName%>" name="StageName"/>
                                  <input type="hidden" value="<%=reqId%>" name="ReqquestId"/>
                                  <input type="hidden" value="<%=StageNo%>" name="StageNo"/>
                                  <input type="hidden" value="<%=StageValue%>" name="StageValue"/>
                                  <input type="hidden" value="<%=ArtifactId%>"  name="ArtifactId"/>
                              <input type="hidden" value="<%=ProcessId%>" name="ProcessId"/></td>
                              <td valign="middle"><%=Comments%></td>
                            </tr>
                            <%
                                                 
                                               
                                                                   
                                                                }
   }
   else{
	   %>
                            <tr>
                              <td colspan="7" align="center"><strong>No DATA </strong></td>
                            </tr>
                            <%
   }
                                                %>
                            <!-- CONTENTS START HERE -->
                        </table></td>
                      </form>
                    </tr>
                </table>
              <!-- CONTENTS END HERE -->          </td>
        </tr>
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
