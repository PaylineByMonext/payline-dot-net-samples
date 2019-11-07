<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doAuthorization.aspx.cs" Inherits="doAuthorization" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <h2 style="text-align: left">
                <span style="color: #ff6600">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/Index.aspx">Back to Index</asp:HyperLink></span><span
                        style="font-family: Arial">&nbsp;</span></h2>
            <h2>
                <span style="color: #ff6600">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span>&nbsp;</h2>
            <h2>
                <span style="color: #5f5f5f; font-family: Arial">Do authorization</span></h2>
                <span style="color: #ff6600"></span>
            <hr style="font-family: Arial" />
            <p>
                    <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                        Visible="False"></asp:Label><span style="font-family: Arial">&nbsp;</span></p>
            <p>
                <span style="color: #ff6600">
                        <table style="width: 698px; text-align: center; font-family: Arial;">
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <strong><span style="color: #97cb00">Result</span></strong></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: black">Code:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultCode" runat="server" Width="373px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Short message:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultShortMessage" runat="server" Width="373px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Long message:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultLongMessage" runat="server" Width="373px"></asp:TextBox></td>
                            </tr>
                        </table>
                </span><span style="font-family: Arial"></span>
            </p>
            <span style="color: #ff6600">
                <hr style="font-family: Arial" />
                <p>
                </p>
                    <span style="color: #5f5f5f; font-family: Arial"><strong>Returned results</strong></span>
            </span><p>
                <span style="color: #ff6600"><span style="font-family: Arial"><span style="color: #000000">
                        Return transaction ID:</span> </span></span>
                        <asp:TextBox ID="TextBoxTransactionID" runat="server" ReadOnly="True" Width="227px"></asp:TextBox><span
                    style="font-family: Arial">&nbsp;</span></p>
            <hr style="font-family: Arial" />
            <p>
                        <table style="width: 832px; text-align: center; font-family: Arial;">
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <span style="color: #ff6600"><strong style="color: #97cb00">Web Service Payline</strong></span></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 26px; text-align: left; color: black;">
                                    Version:
                                </td>
                                <td style="width: 638px; height: 26px">
                                    <asp:TextBox ID="TextBoxVersion" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 26px; text-align: left; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <span style="color: #ff6600"><strong style="color: #97cb00">Information about card</strong></span></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 26px; text-align: left; color: black;">
                                    Card number:
                                </td>
                                <td style="width: 638px; height: 26px">
                                    <asp:TextBox ID="TextBoxCardNumber" runat="server" Width="373px">4111111111111111</asp:TextBox></td>
                                <td style="width: 655px; height: 26px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Card type:
                                </td>
                                <td style="width: 638px; height: 21px">
                                    <asp:DropDownList ID="DropDownListCardType" runat="server" Width="374px">
                                        <asp:ListItem>CB</asp:ListItem>
                                        <asp:ListItem>AMEX</asp:ListItem>
                                        <asp:ListItem>COFINOGA</asp:ListItem>
                                        <asp:ListItem>JCB</asp:ListItem>
                                        <asp:ListItem>DINERS</asp:ListItem>
                                        <asp:ListItem>AURORE</asp:ListItem>
                                        <asp:ListItem>SOFINCO</asp:ListItem>
                                        <asp:ListItem>CETELEM</asp:ListItem>
                                        <asp:ListItem>FNAC</asp:ListItem>
                                        <asp:ListItem>PRINTEMPS</asp:ListItem>
                                        <asp:ListItem>KANGOUROU</asp:ListItem>
                                        <asp:ListItem>SURCOUF</asp:ListItem>
                                        <asp:ListItem>CYRILLUS</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Card expiration date:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxCardExpiration" runat="server" Width="373px">0808</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Card cryptogram:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxCardCryptogram" runat="server" Width="373px">123</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                    <span>(Required)</span></td>
                            </tr>
                            <tr style="font-weight: bold; color: #ff6600">
                                <td style="width: 435px; height: 21px; text-align: left; color: #97cb00;">
                                    Owner birthday date:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxCardBirthday" runat="server" Width="373px">101054</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Card password:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxCardPassword" runat="server" Width="373px">1</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <span style="color: #000000">Information about payment</span></td>
                                <td style="width: 638px; height: 21px; color: #000000;">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Payment amount:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPaymentAmount" runat="server" Width="373px">33300</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Payment mode:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:DropDownList ID="DropDownListPaymentMode" runat="server" Width="374px">
                                        <asp:ListItem>CPT</asp:ListItem>
                                        <asp:ListItem>DIF</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    <span>(Required)</span></td>
                            </tr>
                            <tr style="font-weight: bold; color: #ff6600">
                                <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                    Payment fonction:</td>
                                <td style="width: 638px; height: 21px; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListPaymentFunction" runat="server" Width="374px">
                                        <asp:ListItem Value="100">Autor</asp:ListItem>
                                        <asp:ListItem Value="101">Autor+Capture</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 655px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Payment currency:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPaymentCurrency" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Contract number:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPaymentContract" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Differed action date:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPaymentDifferedDate" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    dd/mm/yy</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <strong><span style="color: #97cb00">Information about order</span></strong></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order reference:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderReference" runat="server" Width="373px">1234</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order origin:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderOrigin" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black; text-align: left;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order country:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderCountry" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order taxes:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderTaxes" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order currency:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderCurrency" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order amount:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderAmount" runat="server" Width="373px">33300</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Order date:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxOrderDate" runat="server" Width="373px">12/05/2007 12:36</asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    dd/mm/yyyy HH24:mi (Required)</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <strong><span style="color: #97cb00">Order details</span></strong></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item reference 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem1Reference" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item price 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem1Price" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item quantity 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem1Quantity" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item comment 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem1Comment" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item reference 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem2Reference" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item price 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem2Price" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item quantity 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem2Quantity" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Item comment 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxItem2Comment" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <strong><span style="color: #97cb00">Private datas</span></strong></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data key 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataKey1" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data value 1:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataValue1" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data key 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataKey2" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data value 2:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataValue2" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data key 3:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataKey3" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Private data value 3:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxPrivateDataValue3" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    <strong><span style="color: #97cb00">Informatons about buyer</span></strong></td>
                                <td style="width: 638px; height: 21px">
                                </td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Buyer email:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerEmail" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Buyer account create date:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerAccountDate" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; text-align: left; color: black;">
                                    dd/mm/yy</td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Buyer average amount:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerAverageAmount" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    Buyer order count:</td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerOrderCount" runat="server" Width="373px"></asp:TextBox></td>
                                <td style="width: 655px; height: 21px; color: black;">
                                </td>
                            </tr>
                        </table>
                        </p>
            <p>
                <span style="color: #ff6600"></span>
            </p>
            <p>
                <span style="color: #ff6600"><span style="font-family: Arial">&nbsp;<br />
                </span>
                        <asp:Button ID="ButtonDoAuthorization" runat="server" OnClick="ButtonDoPayment_Click"
                            Text="Do authorization" /></span></p>
        </div>
    
    </div>
    </form>
</body>
</html>
