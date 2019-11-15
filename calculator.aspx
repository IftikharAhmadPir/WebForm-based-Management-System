<%@  Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="HealthCare.calculators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <ul class="nav navbar-nav navbar-right">
					        <li><a href="index.aspx">Medics</a></li>
					        <li><a href="diseas.aspx">Disease</a></li>
					        <li><a href="doctor.aspx">Doctor</a>
					        </li>
					        <li class="active"><a href="calculator.aspx">Calculators</a></li>
							<li><a href="quiz.aspx">Quiz's</a></li>
							<li><a href="survey.aspx">Survey</a></li>
							<li><a href="admin.aspx">ADMIN</a></li>
	 </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .myButton {
	background-color:#7892c2;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	border-radius:28px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Georgia;
	font-size:18px;
	font-weight:bold;
	padding:4px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
}
.myButton:hover {
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}

#login {
            background-color:aliceblue;
            padding:5px;
            text-align:center;
            border-radius:25px;
           

        }
        .auto-style1 {
            width: 251px;
        }
        .auto-style2 {
            height: 39px;
            width: 199px;
        }
        .auto-style4 {
            height: 39px;
            width: 400px;
        }
        .auto-style5 {
            width: 400px;
        }
        .auto-style6 {
            width: 199px;
        }

        .iftikhar1{
    border:2px solid #456879;
	border-radius:10px;
	height: 30px;
	width: 230px;
    
    
   
}
        .iftikhar1:hover{
            background-color:aqua;
        }

        .iftikhar
        {
            color:red;
        }
    </style>
    <div id="login"> 
        </br>
   <center><table  >
       <tr>

           <td>
              <form id="form1" runat="server">
                  <table>
                      <h1><b>Calculate Your BMI</b></h1>
                      <tr>
                          </br>
                          <th class="auto-style6">

                              Enter Your Height (in):
                          </th>
                          <td class="auto-style5">
                              <asp:TextBox ID="txt_height" runat="server" CssClass="iftikhar1" Text="enter height"></asp:TextBox>
                              
                          </td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="false" ControlToValidate="txt_height" SetFocusOnError="true"  runat="server" ErrorMessage="Enter Your Height"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      
                      <br />
                      <br />
                      <tr>
                          <th class="auto-style2">
                              <br />
                              Enter Your Weight (lbs):
                          </th>
                          <td class="auto-style4">
                              <br />
                              <asp:TextBox ID="txt_weight" runat="server" CssClass="iftikhar1"></asp:TextBox>
                          </td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" EnableClientScript="false" ControlToValidate="txt_weight"  runat="server" ErrorMessage="Enter Your Weight"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      
                      <tr>
                          <td class="auto-style6"></td>
                          <td>
                              <br />
                              <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="CALCULATE" OnClick="Button1_Click"></asp:Button>
                          </td>
                      </tr>
                      
                      <tr >
                         
                          <td colspan="2" class="auto-style6">
                              <br />
                              <center><asp:Label ID="lbl_answer" runat="server" CssClass="iftikhar" Text=""></asp:Label>
                          &nbsp;<asp:Label ID="lbl_ans_extends" runat="server" CssClass="iftikhar" Text="Is Your BMI" ></asp:Label>&nbsp;</center>
                          </td>
                      </tr>
                  </table>
                  </form>
              
           </td>
          <form id="form2" runat="server">
           <td class="auto-style1">
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>|<asp:Button ID="Button2" runat="server" Text="="></asp:Button>|<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <h2>BMI CHART</h2>
               <p>2----->3 (Thin)</p>
               <p>3----->4 (Normal)</p>
               <p>4----->5 (Over Weight)</p>
               <p>5--> (Obese)</p>
           </form>     
           </td>
           </table>
       
           </center>
        </div>
    
</asp:Content>
