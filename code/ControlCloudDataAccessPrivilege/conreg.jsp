<html>
<head>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
 </head>

<script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.First_Name.value;
if(a==""){
alert("Enter Your Firstname");
document.f.First_Name.focus();
return false;
}
var b=document.f.Last_Name.value;
if(b==""){
alert("Enter Your Lastname");
document.f.Last_Name.focus();
return false;
}

var e = document.f.Email_Id.value;
if(e=="")
{
alert("Enter the vaild email id");
document.f.Email_Id.focus();
return false;
}
if(e.indexOf("@",0)<0)
{
alert("email must use @ symbol");
document.f.Email_Id.focus();
return false;
}
if(e.indexOf(".",0)<0)
{
alert("emial must use ( . ) symbol");
document.f.Email_Id.focus();
return false;
}


var k=document.f.Mobile_Number.value;
if(k=="")
{
alert("first enter your Mobile number");
document.f.Mobile_Number.focus();
return false;
}
if(isNaN(k))
{
alert("Enter only numeric digits");
document.f.Mobile_Number.focus();
return false;
}
if(k.length!=10)
{
alert("please enter a valid 10 digit Mobile number");
document.f.Mobile_Number.focus();
return false;
}
if(k.charAt(0)!="9")
{
alert("It should starts with 9");
document.f.Mobile_Number.focus();
return false;
}
var cc=document.f.City.value;
if(cc==""){
alert("Enter Your City");
document.f.City.focus();
return false;
}
var pp=document.f.Pin_Code.value;
if(pp==""){
alert("Enter Your Pin_Code");
document.f.Pin_Code.focus();
return false;
}
var State=document.f.State.value;
if(State==""){
alert("Enter Your State");
document.f.State.focus();
return false;
}

var c = document.f.Gender.value;
if ( ( f.Gender[0].checked == false ) && ( f.Gender[1].checked == false ) ) 
{
alert ( "Please choose your Gender: Male or Female" ); 
return false;
}


if((f.lic[0].checked == false) &&(f.lic[1].checked==false ) ) 
{
alert ("Please choose you have  Licence: yes or no");
return false;
}

}
</script>
 <%
	
	 int x=(int)(Math.random()*10000000);
 	 String fkey=Integer.toString(x);
	 session.setAttribute("password",fkey);
 	System.out.println("password is:"+fkey);
	%>

<body>

 
<div class="header">
<ul><li><a href="index.html">HOME </a></li>
<li><a href="consumer.jsp">CONSUMER </a></li>
<li><a href="#">LOGOUT </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content" align="center">
 

<form action="conreg1.jsp" method="POST" name="f" onClick="return validation();">

    <h3>CONSUMER REGISTRATION</h3>
        <table width="305" height="438" align="center" cellpadding = "10" border="2" bordercolor="#990000">
	
      <!----- First Name ---------------------------------------------------------->
      <tr> 
        <td>FIRST NAME</td>
        <td><input type="text" name="First_Name" maxlength="30"/>
           </td>
      </tr>
      <!----- Last Name ---------------------------------------------------------->
      <tr> 
        <td>LAST NAME</td>
        <td><input type="text" name="Last_Name" maxlength="30"/>
          </td>
      </tr>
     
      <!----- Email Id ---------------------------------------------------------->
      <tr> 
        <td>EMAIL ID</td>
        <td><input type="text" name="Email_Id" maxlength="100" /></td>
      </tr>
      <!----- Mobile Number ---------------------------------------------------------->
      <tr> 
        <td>MOBILE NUMBER</td>
        <td> <input type="text" name="Mobile_Number" maxlength="10" />
          </td>
      </tr>
      <!----- Gender ----------------------------------------------------------->
      <tr> 
        <td>GENDER</td>
        <td> Male 
          <input type="radio" name="Gender" value="Male" />
          Female 
          <input type="radio" name="Gender" value="Female" /> </td>
      </tr>
    
      <!----- City ---------------------------------------------------------->
      <tr> 
        <td>CITY</td>
        <td><input type="text" name="City" maxlength="30" />
          </td>
      </tr>
      <!----- Pin Code ---------------------------------------------------------->
      <tr> 
        <td>PIN CODE</td>
        <td><input type="text" name="Pin_Code" maxlength="6" />
          </td>
      </tr>
      <!----- State ---------------------------------------------------------->
      <tr> 
        <td>STATE</td>
        <td><input type="text" name="State" maxlength="30" />
         </td>
      </tr>
      <!----- Country ---------------------------------------------------------->
      <tr> 
        <td>COUNTRY</td>
        <td><input type="text" name="Country" value="India" readonly="readonly" /></td>
      </tr>
	  
     
      <!----- Submit and Reset ------------------------------------------------->
      <tr> 
        <td colspan="2" align="center"> <input type="submit" value="Submit">
          <input type="reset" value="Reset"> 
        </td>
      </tr>
    </table>
 
</form>
 </div>
 
 <div class="fooder">
 </div>


</body></html>
