<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="diseas2.aspx.cs" Inherits="HealthCare.diseas2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<ul class="nav navbar-nav navbar-right">
					        <li><a href="index.aspx">Medics</a></li>
					        <li class="active"><a href="diseas.aspx">Disease</a></li>
					        <li><a href="doctor.aspx">Doctor</a>
					        </li>
					        <li><a href="calculator.aspx">Calculators</a></li>
							<li><a href="quiz.aspx">Quiz's</a></li>
							<li><a href="survey.aspx">Survey</a></li>
							<li><a href="admin.aspx">ADMIN</a></li>
	 </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        #login {
            background-color:aliceblue;
            padding:5px;
            text-align:center;
            border-radius:25px;
           

        }
        table{
            border-collapse:separate;
            border-radius:25px;
            
        }
        table td{
            padding:6px;
           
        }
    </style>
    <center>
        <form runat="server">
        <table id="login">
            <tr>
                <td>
                    <div>
                        <table id="login">
            
            <tr>
                <td colspan="2">
                <asp:DropDownList ID="ddl_disease" runat="server"  AutoPostBack="true">

                </asp:DropDownList>
                
               
                        <br />
                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                   Symptoms: 
                </td>
                <td>
                    <asp:TextBox ID="txt_symptoms" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Prescribed Medicine:
                </td>
                <td>
                    <asp:TextBox ID="txt_medicine" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Disease Information:
                </td>
                <td>
                    <asp:TextBox ID="txt_info" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Prescribed Doctor:
                </td>
                <td>
                    <asp:TextBox ID="txt_doctor" runat="server"></asp:TextBox>
                </td>
            </tr>
            
        </table>
                    </div>
                </td>
                
            </tr>
        </table>
            </form>
    </center>
</asp:Content>
