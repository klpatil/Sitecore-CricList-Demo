<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CricketerList.ascx.cs" Inherits="CricListDemo.CricListDemo.CricketerList" %>
<%@ Register
    Assembly="Sitecore.Kernel"
    Namespace="Sitecore.Web.UI.WebControls"
    TagPrefix="sc" %>
<%@ Import Namespace="Sitecore.Data.Items" %>
<asp:Repeater ID="rptCricketers" runat="server">
    <HeaderTemplate>
        <table border="1" width="100%">        
            <tr>
                <th>CricketerID</th>
                <th>CricketerName</th>
                <th>View</th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <sc:Text ID="CricketerID" runat="server" 
                    Field="CricketerID"
                    Item="<%# Container.DataItem %>">
                </sc:Text>
            </td>
            <td>
                <sc:Text ID="CricketerName" runat="server"
                    Field="CricketerName" item="<%# Container.DataItem %>">
                </sc:Text>
            </td>
            <td>
                <asp:HyperLink ID="hlinkView" runat="server"
                    NavigateUrl='<%# "/Cricketers List Page/" 
                    + ((Item)Container.DataItem)["CricketerName"] %>'
                    Text="View"></asp:HyperLink>
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
