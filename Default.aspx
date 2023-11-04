<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication20._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
           
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="bookid" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="bookauthor" HeaderText="bookauthor" SortExpression="bookauthor" />
                        <asp:BoundField DataField="bookcategory" HeaderText="bookcategory" SortExpression="bookcategory" />
                        <asp:BoundField DataField="bookpublisher" HeaderText="bookpublisher" SortExpression="bookpublisher" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [book] WHERE [bookid] = @original_bookid AND [bookname] = @original_bookname AND [price] = @original_price AND (([bookauthor] = @original_bookauthor) OR ([bookauthor] IS NULL AND @original_bookauthor IS NULL)) AND (([bookcategory] = @original_bookcategory) OR ([bookcategory] IS NULL AND @original_bookcategory IS NULL)) AND (([bookpublisher] = @original_bookpublisher) OR ([bookpublisher] IS NULL AND @original_bookpublisher IS NULL))" InsertCommand="INSERT INTO [book] ([bookid], [bookname], [price], [bookauthor], [bookcategory], [bookpublisher]) VALUES (@bookid, @bookname, @price, @bookauthor, @bookcategory, @bookpublisher)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:BooksDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [book]" UpdateCommand="UPDATE [book] SET [bookname] = @bookname, [price] = @price, [bookauthor] = @bookauthor, [bookcategory] = @bookcategory, [bookpublisher] = @bookpublisher WHERE [bookid] = @original_bookid AND [bookname] = @original_bookname AND [price] = @original_price AND (([bookauthor] = @original_bookauthor) OR ([bookauthor] IS NULL AND @original_bookauthor IS NULL)) AND (([bookcategory] = @original_bookcategory) OR ([bookcategory] IS NULL AND @original_bookcategory IS NULL)) AND (([bookpublisher] = @original_bookpublisher) OR ([bookpublisher] IS NULL AND @original_bookpublisher IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_bookid" Type="Int32" />
                        <asp:Parameter Name="original_bookname" Type="String" />
                        <asp:Parameter Name="original_price" Type="Double" />
                        <asp:Parameter Name="original_bookauthor" Type="Int32" />
                        <asp:Parameter Name="original_bookcategory" Type="Int32" />
                        <asp:Parameter Name="original_bookpublisher" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookid" Type="Int32" />
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="bookauthor" Type="Int32" />
                        <asp:Parameter Name="bookcategory" Type="Int32" />
                        <asp:Parameter Name="bookpublisher" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="bookauthor" Type="Int32" />
                        <asp:Parameter Name="bookcategory" Type="Int32" />
                        <asp:Parameter Name="bookpublisher" Type="Int32" />
                        <asp:Parameter Name="original_bookid" Type="Int32" />
                        <asp:Parameter Name="original_bookname" Type="String" />
                        <asp:Parameter Name="original_price" Type="Double" />
                        <asp:Parameter Name="original_bookauthor" Type="Int32" />
                        <asp:Parameter Name="original_bookcategory" Type="Int32" />
                        <asp:Parameter Name="original_bookpublisher" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
          </section>
        </div>
    </main>

</asp:Content>
