﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="FineUIDemo.Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <x:Panel ID="Panel1" runat="server" BodyPadding="5px" EnableLargeHeader="false"
        EnableBackgroundColor="true" ShowBorder="false" Layout="VBox" BoxConfigAlign="Stretch"
        BoxConfigPosition="Start" ShowHeader="false" Title="支付管理">
        <Items>
            <x:Form ID="Form2" runat="server" Height="36px" BodyPadding="5px" ShowHeader="false"
                ShowBorder="false" EnableBackgroundColor="true">
                <Rows>
                    <x:FormRow ID="FormRow1" runat="server">
                        <Items>
                            <x:TwinTriggerBox ID="ttbSearchMessage" runat="server" ShowLabel="false" EmptyText="在支付人中搜索"
                                Trigger1Icon="Clear" Trigger2Icon="Search" ShowTrigger1="false" OnTrigger2Click="ttbSearchMessage_Trigger2Click"
                                OnTrigger1Click="ttbSearchMessage_Trigger1Click">
                            </x:TwinTriggerBox>
                            <x:Label runat="server">
                            </x:Label>
                            <x:Label ID="Label1" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:Grid ID="Grid1" runat="server" BoxFlex="1" ShowBorder="true" ShowHeader="false"
                EnableCheckBoxSelect="true" EnableRowNumber="true" DataKeyNames="CK_PaymentID" AllowSorting="true"
                OnSort="Grid1_Sort" SortColumnIndex="0" SortDirection="DESC" AllowPaging="true"
                IsDatabasePaging="true" OnPreDataBound="Grid1_PreDataBound" OnRowCommand="Grid1_RowCommand"
                OnPageIndexChange="Grid1_PageIndexChange">
                <Toolbars>
                    <x:Toolbar ID="Toolbar1" runat="server">
                        <Items>
                            <%--<x:Button ID="btnDeleteSelected" Icon="Delete" runat="server" Text="删除选中记录" OnClick="btnDeleteSelected_Click">
                            </x:Button>--%>
                            <x:ToolbarFill ID="ToolbarFill1" runat="server">
                            </x:ToolbarFill>
                            <x:Button ID="Button1" EnableAjax="false" DisableControlBeforePostBack="false"
                                runat="server" Text="将Grid导出为Excel文件" OnClick="Button1_Click">
                            </x:Button>
                            <x:Button ID="btnNew" runat="server" Icon="Add" EnablePostBack="false" Text="新增支付">
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Columns>
                    <x:BoundField DataField="ck_peoplename" SortField="ck_peoplename" Width="100px" HeaderText="支付人" />
                    <x:BoundField DataField="ck_paymoney" SortField="ck_paymoney" Width="100px" HeaderText="支付金额" />
                    <x:BoundField DataField="ck_paydate" Width="100px" DataFormatString="{0:yyyy-MM-dd}" HeaderText="支付日期" />
     
                    <x:BoundField DataField="ck_paycomment" SortField="ck_paycomment" ExpandUnusedSpace="true" HeaderText="备注" />

  
                    <x:WindowField ColumnID="editField" TextAlign="Center" Icon="Pencil" ToolTip="编辑" WindowID="Window1"
                        Title="编辑" DataIFrameUrlFields="CK_PaymentID" DataIFrameUrlFormatString="~/CK_Payment_edit.aspx?id={0}"
                        Width="50px" />
                    <x:LinkButtonField ColumnID="deleteField" TextAlign="Center" Icon="Delete" ToolTip="删除" ConfirmText="确定删除此记录？"
                        ConfirmTarget="Top" CommandName="Delete" Width="50px" />
                </Columns>
            </x:Grid>
        </Items>
    </x:Panel>
    <x:Window ID="Window1" CloseAction="Hide" runat="server" IsModal="true" Hidden="true" Target="Top"
        EnableResize="true" EnableMaximize="true" EnableIFrame="true" IFrameUrl="about:blank"
        Width="650px" Height="450px" OnClose="Window1_Close">
    </x:Window>
    </form>
</body>
</html>
