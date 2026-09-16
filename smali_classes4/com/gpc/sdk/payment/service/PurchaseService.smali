.class public interface abstract Lcom/gpc/sdk/payment/service/PurchaseService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_RETRY_INTERVAL:I = 0x1e


# virtual methods
.method public abstract getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
.end method

.method public abstract submit(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;)V
.end method

.method public abstract submitAmazon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;)V
.end method
