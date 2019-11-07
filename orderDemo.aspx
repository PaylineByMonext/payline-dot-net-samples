<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderDemo.aspx.cs" Inherits="orderDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align: center">
                    <span style="color: #ff6600"><span style="font-size: 1.2em"></span></span>
                <h2 style="text-align: left">
                    <span style="color: #ff6600">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" NavigateUrl="~/Index.aspx">Back to Index</asp:HyperLink></span><span
                            style="font-family: Arial">&nbsp;</span></h2>
                <h2>
                    <span style="color: #ff6600">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span>&nbsp;</h2>
                <h2>
                    <span style="color: #5f5f5f; font-family: Arial">Do web payment</span></h2>
                <span style="color: #ff6600">
                    <hr style="font-family: Arial" />
                    <span style="font-family: Arial"></span>
                    <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                        Visible="False" Font-Size="Medium"></asp:Label></span><p>
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
                            </span></p>
                <span style="color: #ff6600"></span><span style="color: #ff6600">
                    <hr style="font-family: Arial" />
                    <p>
                    </p>
                        <span style="color: #5f5f5f; font-family: Arial"><strong>Returned results</strong></span>
                </span><p>
                    <span style="color: #ff6600"><span style="font-family: Arial"><span style="color: #000000">
                    Return token:</span> </span></span>
                            <asp:TextBox ID="TextBoxToken" runat="server" ReadOnly="True" Width="393px"></asp:TextBox><span
                        style="font-family: Arial">
                            &nbsp;
                            <br />
                            Redirect URL: </span>
                            <asp:TextBox ID="TextBoxRedirectURL" runat="server" ReadOnly="True" Width="731px"></asp:TextBox></p>
                <p>
                    <span style="font-family: Arial"></span>&nbsp;
                            <asp:Button ID="ButtonGoPayentPage" runat="server" OnClick="ButtonGoPayentPage_Click"
                                Text="Go to payment page" /><span style="font-family: Arial"></span></p>
                <hr style="font-family: Arial" />
                <p>
                    <span style="color: #ff6600"></span>
                </p>
                <p>
                    <span style="color: #ff6600">
                            <table style="width: 856px; text-align: center; font-family: Arial;">
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <strong><span style="color: #97cb00">Information about payment</span></strong></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Payment amount:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentAmount" runat="server" Width="373px">33300</asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
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
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Payment fonction:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:DropDownList ID="DropDownListPaymentFunction" runat="server" Width="374px">
                                            <asp:ListItem Value="100">Autor</asp:ListItem>
                                            <asp:ListItem Value="101">Autor+Capture</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Payment currency:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentCurrency" runat="server" Width="373px" Text="978"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Contract number:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentContract" runat="server" Width="373px" Text="CB"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Differed action date:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentDifferedDate" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        dd/mm/yy</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <span style="color: #97cb00"><strong>Information about order</strong></span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order reference:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderReference" runat="server" Width="373px">1234</asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        Order origin:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderOrigin" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order country:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderCountry" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order taxes:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderTaxes" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order currency:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderCurrency" runat="server" Width="373px" Text="978"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order amount:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderAmount" runat="server" Width="373px">33300</asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Order date:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxOrderDate" runat="server" Width="373px">12/05/2007 12:36</asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        dd/mm/yyyy HH24:mi (Required)</td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <span style="color: #97cb00">Order details</span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        Item reference 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem1Reference" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Item price 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem1Price" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Item quantity 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem1Quantity" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Item comment 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem1Comment" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Item reference 2:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem2Reference" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <strong style="font-weight: normal">Item price 2:</strong></td>
                                    <td style="width: 638px; height: 21px; font-weight: bold;">
                                        <asp:TextBox ID="TextBoxItem2Price" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        Item quantity 2:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem2Quantity" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Item comment 2:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxItem2Comment" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <span style="color: #97cb00"><strong>Contrats</strong></span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Selected contrat list:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxContratList" runat="server" Width="373px" Text="CB;"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <span style="color: #97cb00"><strong>Private datas</strong></span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data key 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataKey1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data value 1:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataValue1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data key 2:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataKey2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data value 2:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataValue2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data key 3:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataKey3" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Private data value 3:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPrivateDataValue3" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 10px; text-align: left; color: black;">
                                        <strong><span style="color: #97cb00">Informatons about buyer</span></strong></td>
                                    <td style="width: 638px; height: 10px">
                                    </td>
                                    <td style="width: 660px; height: 10px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Buyer email:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerEmail" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Buyer phone:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerPhone" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        CustomerID:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerCustomerId" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        CLegal status:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerLegalStatus" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Legal document:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerLegalDocument" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Birth date:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerBirthDate" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;"></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        dd/mm/yy</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Wallet card ind:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerWalletCardInd" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Wallet displayed:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerWalletDisplayed" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Buyer account create date:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerAccountDate" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; text-align: left; color: black;">
                                        dd/mm/yy</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Buyer average amount:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerAverageAmount" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Buyer order count:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxBuyerOrderCount" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        <strong><span style="color: #97cb00">Informatons about URL</span></strong></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Cancel Url:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxCancelUrl" runat="server" Width="373px" Text="https://www.nextalys.com"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Notificaion Url:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxNotificationUrl" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black;">
                                        Return Url:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxReturnUrl" runat="server" Width="373px" Text="https://www.nextalys.com"></asp:TextBox></td>
                                    <td style="width: 660px; height: 21px; color: black;">
                                    </td>
                                </tr>
                            </table>
                            </span></p>
                <p>
                    <span style="color: #ff6600">
                            <br />
                            <asp:Button ID="ButtonDoAuthorization" runat="server" OnClick="ButtonDoPayment_Click"
                                Text="Do web payment" /><br />
                            <br />
                    </span>&nbsp;</p>
                <p>
                    <span style="font-family: Arial">
                    <span style="color: #ff6600">&nbsp;</span>&nbsp;</span></p>
            </div>
        </div>
    </form>
</body>
</html>
