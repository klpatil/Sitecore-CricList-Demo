<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CricketerDetail.ascx.cs" Inherits="CricListDemo.CricListDemo.CricketerDetail" %>
<%@ Register
    Assembly="Sitecore.Kernel"
    Namespace="Sitecore.Web.UI.WebControls"
    TagPrefix="sc" %>
<table border="1" width="100%">
    <tr>
        <td>Cricketer ID</td>
        <td>
            <sc:Text ID="CricketerID" 
                runat="server" Field="CricketerID">
            </sc:Text>
        </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <sc:Text ID="CricketerName" runat="server" 
                Field="CricketerName">
            </sc:Text>
        </td>
    </tr>
    <tr>
        <td>Photo</td>
        <td>
            <sc:Image ID="CricketerImage" 
                runat="server" Field="CricketerImage">
            </sc:Image>
        </td>
    </tr>
    <tr>
        <td>Bio</td>
        <td>
            <sc:FieldRenderer ID="CricketerBio" runat="server"
                 FieldName="CricketerBio">
            </sc:FieldRenderer>
        </td>
    </tr>
</table>
