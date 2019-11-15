<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="HealthCare.doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <ul class="nav navbar-nav navbar-right">
					        <li><a href="index.aspx">Medics</a></li>
					        <li><a href="diseas.aspx">Disease</a></li>
					        <li class="active"><a href="doctor.aspx">Doctor</a>
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
        .iftikhar{
    border:2px solid #456879;
	border-radius:10px;
	height: 30px;
	width: 230px;
   
}
    </style>
    <center>
        <form runat="server">
        <table id="login">
            <tr>
                <td>
                    <div>
                        <table>
                            <tr>
                                <th>
                                    <h1><b>Doctor Via Location Search:</b></h1>
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddl_location" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_location_SelectedIndexChanged" CssClass="iftikhar">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="g_v" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
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
