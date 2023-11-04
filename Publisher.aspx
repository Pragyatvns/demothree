<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="WebApplication20.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Publisher</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="autid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="autid" HeaderText="autid" ReadOnly="True" SortExpression="autid" />
                <asp:BoundField DataField="autname" HeaderText="autname" SortExpression="autname" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [author] WHERE [autid] = @original_autid AND [autname] = @original_autname" InsertCommand="INSERT INTO [author] ([autid], [autname]) VALUES (@autid, @autname)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [author]" UpdateCommand="UPDATE [author] SET [autname] = @autname WHERE [autid] = @original_autid AND [autname] = @original_autname">
            <DeleteParameters>
                <asp:Parameter Name="original_autid" Type="Int32" />
                <asp:Parameter Name="original_autname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="autid" Type="Int32" />
                <asp:Parameter Name="autname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="autname" Type="String" />
                <asp:Parameter Name="original_autid" Type="Int32" />
                <asp:Parameter Name="original_autname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
       
    </main>
</asp:Content>
