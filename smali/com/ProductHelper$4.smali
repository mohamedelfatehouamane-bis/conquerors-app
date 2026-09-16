.class Lcom/ProductHelper$4;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->initPayV2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ProductHelper;


# direct methods
.method constructor <init>(Lcom/ProductHelper;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/ProductHelper$4;->this$0:Lcom/ProductHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 476
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    const-wide/16 p1, 0x0

    .line 477
    sput-wide p1, Lcom/ProductHelper;->s_nProductID:J

    return-void
.end method

.method public onGPCPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 5

    .line 451
    const-string p3, "onGPCPurchaseFailed__2"

    const-string v0, "ProductHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    sget-object p3, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    const-wide/16 v1, 0x0

    if-ne p2, p3, :cond_0

    .line 455
    const-string p2, "Succeeded to make a purchase, but failed on the communication with GPC Payment Gateway"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    sget-wide v3, Lcom/ProductHelper;->s_nProductID:J

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v3, v4, p1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 457
    sput-wide v1, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 458
    :cond_0
    sget-object p3, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    if-ne p2, p3, :cond_1

    .line 460
    const-string p2, "Failed to make a purchase"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    sget-wide v3, Lcom/ProductHelper;->s_nProductID:J

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v3, v4, p1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 462
    sput-wide v1, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 463
    :cond_1
    sget-object p3, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    if-ne p2, p3, :cond_2

    .line 464
    const-string p2, "Cancel purchase"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    sget-wide v3, Lcom/ProductHelper;->s_nProductID:J

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/16 p3, 0xe

    invoke-virtual {p2, p3, v3, v4, p1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 466
    sput-wide v1, Lcom/ProductHelper;->s_nProductID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onGPCPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
    .locals 2

    .line 405
    const-string p1, "onGPCPurchaseFinished__2"

    const-string v0, "ProductHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 407
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->deliveryState()Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    move-result-object p1

    .line 409
    sget-object v1, Lcom/ProductHelper$8;->$SwitchMap$com$gpc$sdk$payment$service$GPCPaymentDeliveryState:[I

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    const-string p1, "Payment succeeded:PROCESSING"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_1
    :try_start_0
    const-string p1, "Payment succeeded"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 422
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 427
    :cond_2
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    .line 428
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, p3, v1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    const-wide/16 p1, 0x0

    .line 429
    sput-wide p1, Lcom/ProductHelper;->s_nProductID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onGPCPurchasePreparingFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 347
    const-string v0, "onGPCPurchasePreparingFinished__2"

    const-string v1, "ProductHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/ProductHelper$4;->this$0:Lcom/ProductHelper;

    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/Kungfu;->getPreparedInAppPurchase()Lcom/gpc/sdk/payment/GPCPayment;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ProductHelper;->-$$Nest$fputpaymentManager(Lcom/ProductHelper;Lcom/gpc/sdk/payment/GPCPayment;)V

    .line 351
    const-string v0, "save paymentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/ProductHelper$4;->this$0:Lcom/ProductHelper;

    invoke-static {v0, v2}, Lcom/ProductHelper;->-$$Nest$fputpaymentReady(Lcom/ProductHelper;Z)V

    .line 357
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initPayV2 error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/ProductHelper$4;->this$0:Lcom/ProductHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ProductHelper;->-$$Nest$fputpaymentReady(Lcom/ProductHelper;Z)V

    .line 362
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jniCallback;->retEventCall(I)V

    .line 363
    iget-object p1, p0, Lcom/ProductHelper$4;->this$0:Lcom/ProductHelper;

    invoke-static {p1, v0}, Lcom/ProductHelper;->-$$Nest$mloadItems(Lcom/ProductHelper;Z)V

    .line 364
    const-string p1, "onGPCPurchasePreparingFinished sucess__2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGPCPurchaseStartingFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 2

    .line 370
    const-string p2, "ProductHelper"

    const-string p3, "onGPCPurchaseStartingFinished__2"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    .line 375
    const-string p3, "120305"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    .line 377
    :cond_0
    const-string p3, "120303"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p2, 0x2c

    goto :goto_0

    .line 379
    :cond_1
    const-string p3, "120304"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    const/4 p2, 0x1

    .line 383
    :goto_0
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p3

    invoke-virtual {p3}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p3

    .line 384
    sget-wide v0, Lcom/ProductHelper;->s_nProductID:J

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/jniCallback;->retBuyProduct(IJI)V

    const-wide/16 p1, 0x0

    .line 385
    sput-wide p1, Lcom/ProductHelper;->s_nProductID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 2

    .line 396
    const-string p1, "ProductHelper"

    const-string p2, "onGPCSubscriptionShouldMakeRecurringPaymentsInstead__2"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    .line 398
    sget-wide p2, Lcom/ProductHelper;->s_nProductID:J

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/jniCallback;->retBuyProduct(IJI)V

    const-wide/16 p1, 0x0

    .line 399
    sput-wide p1, Lcom/ProductHelper;->s_nProductID:J

    return-void
.end method
