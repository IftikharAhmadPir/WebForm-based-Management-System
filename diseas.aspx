<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="diseas.aspx.cs" Inherits="HealthCare.disease1" %>
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
    
    <form runat="server">
    <center>
        <h1><b>Disease Detail</b></h1>
        </br>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="228px" Width="862px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id"></asp:BoundField>
                <asp:BoundField DataField="disease_name" HeaderText="disease_name" SortExpression="disease_name"></asp:BoundField>
                <asp:BoundField DataField="symptoms" HeaderText="symptoms" SortExpression="symptoms"></asp:BoundField>
                <asp:BoundField DataField="medicine" HeaderText="medicine" SortExpression="medicine"></asp:BoundField>
                <asp:BoundField DataField="disease_info" HeaderText="disease_info" SortExpression="disease_info"></asp:BoundField>
                <asp:BoundField DataField="prescribed_doctor" HeaderText="prescribed_doctor" SortExpression="prescribed_doctor"></asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <sortedascendingcellstyle backcolor="#F8FAFA" />
            <sortedascendingheaderstyle backcolor="#246B61" />
            <sorteddescendingcellstyle backcolor="#D4DFE1" />
            <sorteddescendingheaderstyle backcolor="#15524A" />
        </asp:GridView>
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:medicalConnectionString9 %>" SelectCommand="SELECT * FROM [disease]"></asp:SqlDataSource>
            </br>
    </center>
        </form>
</asp:Content>
