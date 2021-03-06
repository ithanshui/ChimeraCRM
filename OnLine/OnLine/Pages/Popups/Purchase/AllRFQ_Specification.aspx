﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllRFQ_Specification.aspx.cs" Inherits="OnLine.Pages.Popups.Purchase.AllRFQ_Specification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="~/css/bootstrap.css" /> 
    <title></title>
               <style type="text/css">
        .style2
        {
            text-align: center;
            margin-left: 40px;
        }
        .style1
        {
            font-family: Andalus;
        }
        .style3
       {
           margin-top: 0;
           margin-bottom: 0;
           font-size: 16px;
           color: inherit;
           font-family: Andalus;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div align="center">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Label ID="Label_Status" runat="server" Visible="False"></asp:Label>
    
        <br />

                    <asp:GridView ID="GridView1" Width="95%"
                        runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    GridLines="None" 
                     CssClass="table table-striped table-bordered table-hover tableShadow" 
                    PageSize="5" 
                        style="font-size: small; font-family: Andalus;" 
                        onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" 
            onrowdatabound="GridView1_RowDataBound" 
            onrowcancelingedit="GridView1_RowCancelingEdit" onrowdeleting="GridView1_RowDeleting" 
                        onpageindexchanging="GridView1_PageIndexChanging">

                    <Columns>
                        <asp:CommandField ShowEditButton="True"></asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="Hidden">
                            <ItemTemplate>
                                <asp:Label ID="Label_Hidden" runat="server" Text='<%# Eval("Hidden") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Category">
                            <ItemTemplate>
                                <asp:Label ID="Label_Product" runat="server" 
                                    Text='<%# Eval("CategoryName") %>' style="font-family: Andalus"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Feature">
                            <ItemTemplate>
                                <asp:GridView ID="GridView1_Inner" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                    GridLines="Horizontal" onpageindexchanging="GridView1_Inner_PageIndexChanging" 
                                    PageSize="1" onrowcancelingedit="GridView1_Inner_RowCancelingEdit" 
                                    onrowdatabound="GridView1_Inner_RowDataBound" 
                                    onrowediting="GridView1_Inner_RowEditing" 
                                    onrowupdating="GridView1_Inner_RowUpdating">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:TemplateField HeaderText="Hidden">
                                            <ItemTemplate>
                                                <asp:Label ID="Label_Hidden" runat="server" Text='<%# Eval("Hidden") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Feature">
                                            <ItemTemplate>
                                                <asp:Label ID="Label_Feature" runat="server" Text='<%# Eval("FeatName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Label ID="Label_Feature_Edit" runat="server" 
                                                    Text='<%# Eval("FeatName") %>'></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Spec Text">
                                            <ItemTemplate>
                                                <asp:Label ID="Label_SpecText" runat="server" Text='<%# Eval("SpecText") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox class="form-control" ID="TextBox_SpecText_Edit" runat="server" 
                                                    Text='<%# Eval("SpecText") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="From Spec">
                                            <ItemTemplate>
                                                <asp:Label ID="Label_From_Spec" runat="server" Text='<%# Eval("FromSpec") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_From_Spec_Edit" runat="server" 
                                                    style="font-family: Andalus; font-size: small">
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="Label_From_Spec" runat="server" Text='<%# Eval("FromSpec") %>' 
                                                    Visible="False"></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="To Spec">
                                            <ItemTemplate>
                                                <asp:Label ID="Label_ToSpec" runat="server" Text='<%# Eval("ToSpec") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_To_Spec_Edit" runat="server" 
                                                    style="font-family: Andalus; font-size: small">
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="Label_ToSpec" runat="server" Text='<%# Eval("ToSpec") %>' 
                                                    Visible="False"></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton_Show" runat="server" 
                                                    oncommand="RFQ_Link_Feat_Img_Show_Command"  CommandArgument
                                     ="<%# Container.DataItemIndex %>" Text='<%# Eval("imgName") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:FileUpload ID="FileUpload_Image" runat="server" 
                                                    style="font-family: Andalus; font-size: x-small" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="From Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label_From_Qnty" runat="server" style="font-family: Andalus" 
                                    Text='<%# Eval("FromQnty") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox class="form-control" ID="TextBox_From_Qnty" runat="server" 
                                    style="font-family: Andalus; font-size: small" Text='<%# Eval("FromQnty") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label_To_Qnty" runat="server" Text='<%# Eval("ToQnty") %>' 
                                    style="font-family: Andalus"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox class="form-control" ID="TextBox_To_Qnty" runat="server" 
                                    style="font-family: Andalus; font-size: small" Text='<%# Eval("ToQnty") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="From Price">
                            <ItemTemplate>
                                <asp:Label ID="Label_From_Price" runat="server" style="font-family: Andalus" 
                                    Text='<%# Eval("FromPrice") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox class="form-control" ID="TextBox_From_Price" runat="server" 
                                    style="font-family: Andalus; font-size: small" Text='<%# Eval("FromPrice") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To Price">
                            <ItemTemplate>
                                <asp:Label ID="Label_To_Price" runat="server" 
                                    Text='<%# Eval("ToPrice") %>' style="font-family: Andalus"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox class="form-control" ID="TextBox_To_Price" runat="server" 
                                    style="font-family: Andalus; font-size: small" Text='<%# Eval("ToPrice") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Measurement Unit">
                            <ItemTemplate>
                                <asp:Label ID="Label_Msrmnt" runat="server" style="font-family: Andalus" 
                                    Text='<%# Eval("msrmntUnit") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                                            <RowStyle CssClass="cursor-pointer" />
                        <AlternatingRowStyle CssClass="active" />
                        <SelectedRowStyle CssClass="danger" />
                        <HeaderStyle CssClass="success" />
                        <PagerStyle CssClass="pagination-lg" />
                        <FooterStyle CssClass="success"/>
                        <EditRowStyle CssClass="info" />

                </asp:GridView>
                <br />
    </div>
    
    </div>
    <div align="center">
    <div class="panel panel-primary" Width="95%">
        <div class="panel-heading">
            <h3 class="style3">Add Product/Service Details</h3>
            </div>
            <div class="panel-body">   
    <asp:Panel ID="Panel2" runat="server" 
        style="font-family: Andalus">
        <br />
                                <div class="panel-info" Width="95%">
        <div class="panel-heading">
            <h3 class="panel-title">Product/Service Details</h3>
            </div>
            <div class="panel-body">   
        <asp:Panel ID="Panel_Prod_Service_Det" runat="server"
            style="font-family: Andalus" >
            <div class="style2">
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                     </ContentTemplate>
                </asp:UpdatePanel>
                        <asp:Panel ID="Panel3" runat="server">
                            Level1:
                            <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Level1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList_Level1_SelectedIndexChanged" 
                                style="font-family: Andalus">
                            </asp:DropDownList>
                            &nbsp; Level2:
                            <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Level2" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList_Level2_SelectedIndexChanged" 
                                style="font-family: Andalus">
                            </asp:DropDownList>
                            &nbsp;Level3:
                            <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Level3" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList_Level3_SelectedIndexChanged" 
                                style="font-family: Andalus">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Button ID="Buttin_Show_Spec_List" runat="server" class="btn btn-sm btn-success"
                                onclick="Buttin_Show_Spec_List_Click" style="font-family: Andalus" 
                                Text="Show Features and Specifications!" ValidationGroup="Panel2" />
                        </asp:Panel>
                <br />
                <asp:Label ID="Label_Extra_Spec" runat="server" 
                    Text="Specification Not Listed Here? Then Enter..." Visible="False"></asp:Label>
                &nbsp;<asp:TextBox class="form-control" ID="TextBox_Spec" runat="server"  
                    Width="50%" Visible="False" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label_Extra_Spec_upload" runat="server" 
                    Text="and upload picture if required" Visible="False"></asp:Label>
                &nbsp;<asp:FileUpload ID="FileUpload_Extra_Spec" runat="server"  
                    ViewStateMode="Enabled" Visible="False" />
                <br />
                <asp:Label ID="Label_Feat_Exists" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <div align="center">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" Width="50%"
                    AutoGenerateColumns="False" CellPadding="4" 
                                                    CssClass="table table-striped table-bordered table-hover tableShadow" 
                    GridLines="None" onpageindexchanging="GridView2_PageIndexChanging" 
                    onrowdatabound="GridView2_RowDataBound" onrowupdating="GridView2_RowUpdating" 
                    PageSize="3" Visible="False" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged">

                    <Columns>
                        <asp:CommandField SelectText="Add To RFQ" ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Hidden">
                            <ItemTemplate>
                                <asp:Label ID="Label_Hidden" runat="server" 
                                    Text='<%# Eval("Hidden_Feat_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Feature">
                            <ItemTemplate>
                                <asp:Label ID="Label_Feature" runat="server" Text='<%# Eval("Feature") %>'></asp:Label>
                                <asp:Image ID="Image_Selected" runat="server" Height="16px" 
                                    ImageUrl="~/Images/tick_green.jpg" Visible="False" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="From">
                            <EditItemTemplate>
                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Gridview1_From" runat="server" 
                                    style="font-family: Andalus">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Gridview1_From" runat="server" 
                                    style="font-family: Andalus">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To">
                            <EditItemTemplate>
                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Gridview1_To" runat="server" 
                                    style="font-family: Andalus">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Gridview1_To" runat="server" 
                                    style="font-family: Andalus">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Upload Picture">
                            <ItemTemplate>
                                <asp:FileUpload ID="FileUpload_Spec" runat="server" Font-Names="Andalus" />
                                <br />
                                <asp:Label ID="Label_File_Name" runat="server" Visible="False"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                                            <RowStyle CssClass="cursor-pointer" />
                        <AlternatingRowStyle CssClass="active" />
                        <SelectedRowStyle CssClass="danger" />
                        <HeaderStyle CssClass="success" />
                        <PagerStyle CssClass="pagination-lg" />
                        <FooterStyle CssClass="success"/>
                        <EditRowStyle CssClass="info" />
                </asp:GridView></div>
                
            </div>
        </asp:Panel>
        </div>
        </div>
       
        <br />
                                     <div class="panel-info" Width="95%">
        <div class="panel-heading">
            <h3 class="panel-title">Product/Service Quantity</h3>
            </div>
            <div class="panel-body">   
        <asp:Panel ID="Panel_Prod_Srv_Qnty" runat="server"  
            style="font-family: Andalus" >
            From:
            <asp:TextBox class="form-control" ID="TextBox_Prod_Qnty_From" runat="server"  
                Width="20%"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_Qnty_From" 
                runat="server" ControlToValidate="TextBox_Prod_Qnty_From" Display="Dynamic" 
                ErrorMessage="*" ForeColor="Red" ValidationGroup="Req_Validate"></asp:RequiredFieldValidator>
            &nbsp;To:&nbsp;<asp:TextBox class="form-control" ID="TextBoxrod_Qnty_To" runat="server"  
                Width="20%"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_Qnty_To" runat="server" 
                ControlToValidate="TextBoxrod_Qnty_To" Display="Dynamic" ErrorMessage="*" 
                ForeColor="Red" ValidationGroup="Req_Validate"></asp:RequiredFieldValidator>
            &nbsp;Unit Of Measurement:
            <asp:DropDownList class="form-control form-control-dropdown" ID="DropDownList_Unit_Of_Msrmnt" runat="server" 
                style="font-family: Andalus">
            </asp:DropDownList>
        </asp:Panel>
        </div>
        </div>
        <br />
                                             <div class="panel-info" Width="95%">
        <div class="panel-heading">
            <h3 class="panel-title">Price Range</h3>
            </div>
            <div class="panel-body">   
        <asp:Panel ID="Panel_Price_Range" runat="server"  
            style="font-family: Andalus" >
            From:
            <asp:TextBox class="form-control" ID="TextBox_Price_Range_From" runat="server"  
                Width="20%"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_Price_From" 
                runat="server" ControlToValidate="TextBox_Price_Range_From" Display="Dynamic" 
                ErrorMessage="*" ForeColor="Red" ValidationGroup="Req_Validate"></asp:RequiredFieldValidator>
            &nbsp;To:&nbsp;<asp:TextBox class="form-control" ID="TextBox_Price_Range_To" runat="server"  
                Width="20%"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_Price_To" 
                runat="server" ControlToValidate="TextBox_Price_Range_To" Display="Dynamic" 
                ErrorMessage="*" ForeColor="Red" ValidationGroup="Req_Validate"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;</asp:Panel>
            </div>
            </div>
        <br />

                <div align="center">
                    <asp:Button ID="Button_Add_To_Req" runat="server" class="btn btn-sm btn-success"
                        onclick="Button_Add_To_RFQ_Click" style="font-family: Andalus" Text="Add" 
                        ValidationGroup="Req_Validate" />
                        
                    <br />
                    &nbsp;<asp:Label ID="Label_Status0" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <br />
    </asp:Panel>
    </div>
    </div>
    </div>
    <p>
    
    <asp:Label ID="Label_Selected_List" runat="server" Text="Label" Visible="False"></asp:Label>
    
        </p>
    </form>
</body>
</html>
