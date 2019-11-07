using System;
using SDKPaylineDotNet;
using SDKPaylineDotNet.WebPaymentAPI;

public partial class invoiceDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        //Returned objects
        transaction myTransaction = null;
        payment myPayment = null;
        authorization myAuthorization = null;
        privateData[] myPrivateDataList = null;

        string paymentRecordId;
        billingRecord[] billingRecordList;
        authentication3DSecure authentication3DSecur;
        cardOut card;
        extendedCardType extendedCard;
        order order;
        paymentAdditional[] paymentAdditionalList;
        string media;
        string numberOfAttempt;
        wallet wallet;
        string[] contractNumberWalletList;
        string contractNumber;
        bankAccountData bankAccountData;
        subMerchant subMerchant;
        buyer buyer;

        try
        {
            var client = PaymentApiFactory.GetWebPaymentAPIClient();
            result Result = client.getWebPaymentDetails(GlobalVariables.APIVersion, TextBoxToken.Text,
                                           out myTransaction,
                                           out myPayment,
                                           out myAuthorization,
                                           out myPrivateDataList, out paymentRecordId,
           out billingRecordList,
          out authentication3DSecur,
           out card,
           out extendedCard,
            out order,
          out paymentAdditionalList,
          out media,
          out numberOfAttempt,
         out wallet,
         out contractNumberWalletList,
         out contractNumber,
         out bankAccountData,
         out subMerchant,
         out buyer);
            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            if (myTransaction != null)
            {
                TextBoxDate.Text = myTransaction.date;
                TextBoxTransactionID.Text = myTransaction.id;
            }
            if (myPayment != null)
            {
                TextBoxAmount.Text = myPayment.amount;
                TextBoxCurrency.Text = myPayment.currency;
            }
            //Buyer details
            if (buyer != null)
            {
                TextBoxBuyerCustomerId.Text = buyer.customerId;
                TextBoxBuyerMobilePhone.Text = buyer.mobilePhone;
                TextBoxBuyerEmail.Text = buyer.email;
                TextBoxBuyerLegalStatus.Text = buyer.legalStatus;
                TextBoxBuyerLegalDocument.Text = buyer.legalDocument;
                TextBoxBuyerBirthDate.Text = buyer.birthDate;
            }
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
