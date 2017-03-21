<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No files available" Width="268px">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkSelect" runat="server" />
                <asp:Label ID="lblFilePath" runat="server" Text='<%# Eval("Value") %>' Visible="false"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Text" HeaderText="File Name" />
    </Columns>
</asp:GridView>
<br />
<asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="DownloadFiles" />
        </form>
</body>
</html>
