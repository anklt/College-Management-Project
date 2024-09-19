<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dashboardadmin.aspx.cs" Inherits="WebApplication1.dashboardadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/dashboardadmin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Dashboard</h2>

        <!-- Create Section -->

        <div>
            <h3>Add New Student</h3>
            <label for="txtName">Student Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox><br />

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox><br />

            <label for="txtContact">Contact Number:</label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox><br />

            <label for="txtEnrollmentDate">Enrollment Date:</label>
            <asp:TextBox ID="txtEnrollmentDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add Student" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>

        <!-- (CRUD GridView) -->

        <h3>Student List</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="StudentID" CssClass="table table-striped"
                      OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="ID" ReadOnly="true" />
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" />
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
