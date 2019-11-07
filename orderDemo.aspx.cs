using SDKPaylineDotNet;
using SDKPaylineDotNet.WebPaymentAPI;
using System;

public partial class orderDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {

        // Retrieve payment informations
        var myPayment = new payment();
        myPayment.amount = TextBoxPaymentAmount.Text;
        myPayment.currency = TextBoxPaymentCurrency.Text;
        myPayment.action = DropDownListPaymentFunction.SelectedValue;
        myPayment.mode = DropDownListPaymentMode.SelectedValue; ;
        myPayment.contractNumber = TextBoxPaymentContract.Text;
        myPayment.differedActionDate = TextBoxPaymentDifferedDate.Text;

        // Retrieve order informations
        var myOrder = new order();
        myOrder.@ref = TextBoxOrderReference.Text;
        myOrder.origin = TextBoxOrderOrigin.Text;
        myOrder.country = TextBoxOrderCountry.Text;
        myOrder.taxes = TextBoxOrderTaxes.Text;
        myOrder.currency = TextBoxOrderCurrency.Text;
        myOrder.amount = TextBoxOrderAmount.Text;
        myOrder.date = TextBoxOrderDate.Text;
        // Retrieve order details (first part)
        var myOrderDetails1 = new orderDetail();
        myOrderDetails1.@ref = TextBoxItem1Reference.Text;
        myOrderDetails1.price = TextBoxItem1Price.Text;
        myOrderDetails1.quantity = TextBoxItem1Quantity.Text;
        myOrderDetails1.comment = TextBoxItem1Comment.Text;
        // Retrieve order details (second part)
        var myOrderDetails2 = new orderDetail();
        myOrderDetails2.@ref = TextBoxItem2Reference.Text;
        myOrderDetails2.price = TextBoxItem2Price.Text;
        myOrderDetails2.quantity = TextBoxItem2Quantity.Text;
        myOrderDetails2.comment = TextBoxItem2Comment.Text;
        myOrder.details = new orderDetail[] { myOrderDetails1, myOrderDetails2 };

        //retrieve contrats informations
        var selectedContratsList = TextBoxContratList.Text.Split(new char[] { ';' });

        // Retrieve private datas
        var myPrivateData1 = new privateData();
        var myPrivateData2 = new privateData();
        var myPrivateData3 = new privateData();
        myPrivateData1.key = TextBoxPrivateDataKey1.Text;
        myPrivateData1.value = TextBoxPrivateDataValue1.Text;
        myPrivateData2.key = TextBoxPrivateDataKey2.Text;
        myPrivateData2.value = TextBoxPrivateDataValue2.Text;
        myPrivateData3.key = TextBoxPrivateDataKey2.Text;
        myPrivateData3.value = TextBoxPrivateDataValue3.Text;
        var myPrivateDataList = new privateData[] { myPrivateData1, myPrivateData2, myPrivateData3 };

        // Retrieve buyer informations
        var myBuyer = new buyer();
        myBuyer.email = TextBoxBuyerEmail.Text;
        myBuyer.accountCreateDate = TextBoxBuyerAccountDate.Text;
        myBuyer.accountAverageAmount = TextBoxBuyerAverageAmount.Text;
        myBuyer.accountOrderCount = TextBoxBuyerOrderCount.Text;
        myBuyer.mobilePhone = TextBoxBuyerPhone.Text;
        myBuyer.customerId = TextBoxBuyerCustomerId.Text;
        myBuyer.legalStatus = TextBoxBuyerLegalStatus.Text;
        myBuyer.legalDocument = TextBoxBuyerLegalDocument.Text;
        myBuyer.birthDate = TextBoxBuyerBirthDate.Text;
        myBuyer.walletCardInd = TextBoxBuyerWalletCardInd.Text;
        myBuyer.walletDisplayed = TextBoxBuyerWalletDisplayed.Text;
        //myBuyerOld.walletSecured

        string token = "";
        string redirectURL = "";
        string stepCode = "";
        string reqCode = "";
        string method = "";

        try
        {
            var client = PaymentApiFactory.GetWebPaymentAPIClient();
            result Result = client.doWebPayment(GlobalVariables.APIVersion, myPayment,
                                               TextBoxReturnUrl.Text,
                                               TextBoxCancelUrl.Text,
                                               myOrder,
                                               TextBoxNotificationUrl.Text,
                                               selectedContratsList,
                                               new string[] { },
                                               myPrivateDataList,
                                               "FR",
                                               "",
                                               myBuyer,
                                                null, "SSL", null, null, null, null, null, null, null, null, null,
                                               out token,
                                               out redirectURL,
                                               out stepCode,
                                               out reqCode,
                                               out method);

            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxToken.Text = token;
            TextBoxRedirectURL.Text = redirectURL;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
    protected void ButtonGoPayentPage_Click(object sender, EventArgs e)
    {
        Response.Redirect(TextBoxRedirectURL.Text);
    }
}
