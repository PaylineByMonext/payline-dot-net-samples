using SDKPaylineDotNet;
using SDKPaylineDotNet.DirectPaymentAPI;
using System;

public partial class doAuthorization : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        // Retrieve card informations
        card myCard = new card();
        myCard.number = TextBoxCardNumber.Text;
        myCard.type = DropDownListCardType.SelectedValue;
        myCard.expirationDate = TextBoxCardExpiration.Text;
        myCard.cvx = TextBoxCardCryptogram.Text;
        myCard.ownerBirthdayDate = TextBoxCardBirthday.Text;
        myCard.password = TextBoxCardPassword.Text;

        // Retrieve payment informations
        payment myPayment = new payment();
        myPayment.amount = TextBoxPaymentAmount.Text;
        myPayment.currency = TextBoxPaymentCurrency.Text;
        myPayment.action = DropDownListPaymentFunction.SelectedValue;
        myPayment.mode = DropDownListPaymentMode.SelectedValue; ;
        myPayment.contractNumber = TextBoxPaymentContract.Text;
        myPayment.differedActionDate = TextBoxPaymentDifferedDate.Text;

        // Retrieve order informations
        order myOrder = new order();
        myOrder.@ref = TextBoxOrderReference.Text;
        myOrder.origin = TextBoxOrderOrigin.Text;
        myOrder.country = TextBoxOrderCountry.Text;
        myOrder.taxes = TextBoxOrderTaxes.Text;
        myOrder.currency = TextBoxOrderCurrency.Text;
        myOrder.amount = TextBoxOrderAmount.Text;
        myOrder.date = TextBoxOrderDate.Text;
        // Retrieve order details (first part)
        orderDetail myOrderDetails1 = new orderDetail();
        myOrderDetails1.@ref = TextBoxItem1Reference.Text;
        myOrderDetails1.price = TextBoxItem1Price.Text;
        myOrderDetails1.quantity = TextBoxItem1Quantity.Text;
        myOrderDetails1.comment = TextBoxItem1Comment.Text;
        // Retrieve order details (second part)
        orderDetail myOrderDetails2 = new orderDetail();
        myOrderDetails2.@ref = TextBoxItem2Reference.Text;
        myOrderDetails2.price = TextBoxItem2Price.Text;
        myOrderDetails2.quantity = TextBoxItem2Quantity.Text;
        myOrderDetails2.comment = TextBoxItem2Comment.Text;
        myOrder.details = new orderDetail[] { myOrderDetails1, myOrderDetails2 };

        // Retrieve private datas
        privateData myPrivateData1 = new privateData();
        privateData myPrivateData2 = new privateData();
        privateData myPrivateData3 = new privateData();
        myPrivateData1.key = TextBoxPrivateDataKey1.Text;
        myPrivateData1.value = TextBoxPrivateDataValue1.Text;
        myPrivateData2.key = TextBoxPrivateDataKey2.Text;
        myPrivateData2.value = TextBoxPrivateDataValue2.Text;
        myPrivateData3.key = TextBoxPrivateDataKey2.Text;
        myPrivateData3.value = TextBoxPrivateDataValue3.Text;
        var myPrivateDataList = new privateData[] { myPrivateData1, myPrivateData2, myPrivateData3 };

        // Retrieve buyer informations
        buyer myBuyer = new buyer();
        myBuyer.email = TextBoxBuyerEmail.Text;
        myBuyer.accountCreateDate = TextBoxBuyerAccountDate.Text;
        myBuyer.accountAverageAmount = TextBoxBuyerAverageAmount.Text;
        myBuyer.accountOrderCount = TextBoxBuyerOrderCount.Text;

        //Returned datas
        transaction myTransaction = new transaction();
        authorization myAuthorization = new authorization();

        //Retrieve Web Service Version

        string transient = null;
        string linkedTransactionId = null;

        //string contractNumber = myPayment.contractNumber;
        string contractNumber;

        string resultContainer;
        extendedCardType extendedCard;
        cardOut cardOut;
        recurring recurring = null;
        try
        {
            var client = PaymentApiFactory.GetDirectPaymentAPIClient();
            result Result = client.doAuthorization(ref transient, GlobalVariables.APIVersion, myPayment, null, myCard, myOrder, myBuyer, null, ref myPrivateDataList, null, null,
                null, null, ref linkedTransactionId, recurring, out myTransaction, out myAuthorization, out cardOut, out extendedCard, out contractNumber, out resultContainer);

            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxTransactionID.Text = myTransaction.id;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
