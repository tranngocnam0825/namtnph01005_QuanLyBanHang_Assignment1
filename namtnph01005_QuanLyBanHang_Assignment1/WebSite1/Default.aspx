<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1 style="text-align:center" runat="server">Quản Lý Bán Hàng</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <ol class="round">
        <li class="one">
            <h5>Client</h5>
              <h3><asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="170px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="namtnph01005_QuanLyBanHang">
                  <Fields>
                      <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                      <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                  </Fields>
        </asp:DetailsView>
                  <asp:SqlDataSource ID="namtnph01005_QuanLyBanHang" runat="server" ConnectionString="<%$ ConnectionStrings:namtnph01005_QuanLyBanHangConnectionString %>" SelectCommand="SELECT * FROM [client]" UpdateCommand="update client set id=@id,full_name=@full_name,email=@email where id=@id" DeleteCommand="delete from client where id=@id" InsertCommand="insert into client values(@id,@full_name,@email)" ></asp:SqlDataSource>
    </h3>
        </li>
    </ol>
    <h5>&nbsp;</h5>
    <ol class="round">
        <li class="two">
            <h5>Product</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="170px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="namtnph01005_QuanLyBanHang1">
                  <Fields>
                      <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                      <asp:BoundField DataField="product_category_id" HeaderText="product_category_id" SortExpression="product_category_id" />
                      <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                      <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                      <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                      <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                      <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                  </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="namtnph01005_QuanLyBanHang1" runat="server" ConnectionString="<%$ ConnectionStrings:namtnph01005_QuanLyBanHangConnectionString2 %>" SelectCommand="SELECT * FROM [product]" UpdateCommand="update product set id=@id,product_category_id=@product_category_id,sku=@sku,name=@name,price=@price,description=@description,img=@img where id=@id" DeleteCommand="delete from product where id=@id" InsertCommand="insert into product values(@id,@product_category_id,@sku,@name,@price,@description,@img)"></asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Product_Category<asp:DetailsView ID="DetailsView6" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="namtnph01005_QuanLyBanHang2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="parent_category_id" HeaderText="parent_category_id" SortExpression="parent_category_id" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="namtnph01005_QuanLyBanHang2" runat="server" ConnectionString="<%$ ConnectionStrings:namtnph01005_QuanLyBanHangConnectionString4 %>" SelectCommand="SELECT * FROM [product_category]"></asp:SqlDataSource>
            </h5>
        </li>
        <li class="four">
            <h5>Purchase</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="170px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="namtnph01005_QuanLyBanHang3">
                  <Fields>
                      <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                      <asp:BoundField DataField="purchase_no" HeaderText="purchase_no" SortExpression="purchase_no" />
                      <asp:BoundField DataField="client_id" HeaderText="client_id" SortExpression="client_id" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                  </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="namtnph01005_QuanLyBanHang3" runat="server" ConnectionString="<%$ ConnectionStrings:namtnph01005_QuanLyBanHangConnectionString5 %>" SelectCommand="SELECT * FROM [purchase]"></asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Purchase_item</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="170px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="namtnph01005_QuanLyBanHang4">
                  <Fields>
                      <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                      <asp:BoundField DataField="purchase_id" HeaderText="purchase_id" SortExpression="purchase_id" />
                      <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                      <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                  </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="namtnph01005_QuanLyBanHang4" runat="server" ConnectionString="<%$ ConnectionStrings:namtnph01005_QuanLyBanHangConnectionString6 %>" SelectCommand="SELECT * FROM [purchase_item]"></asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
