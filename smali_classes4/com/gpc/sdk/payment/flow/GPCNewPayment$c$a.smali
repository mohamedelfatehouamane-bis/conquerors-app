.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHasSubscribedByIggId(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const-string v2, "120305"

    const-string v3, "10"

    invoke-static {v2, v3, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "GPCNewPayment"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void
.end method

.method public onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 3

    .line 1
    const-string v0, "subscribeTo onIGGSubscriptionShouldMakeRecurringPayments"

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "subscribeTo instead "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void
.end method

.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V
    .locals 13

    .line 1
    const-string v0, "subscribeTo onResult"

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v2, "10"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const-string v4, "120319"

    invoke-static {v4, v2, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2, v3, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 8
    const-string v0, ""

    invoke-static {v1, v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {p2, p1, v3, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->isChangeable()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 16
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v6, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 18
    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {v4 .. v12}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logPaySubscriptionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v4, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getLinkedProductId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->b:Ljava/util/List;

    invoke-virtual/range {v4 .. v9}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 24
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-static {p1, v2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1, v3, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v6, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 31
    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {v4 .. v12}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logPaySubscriptionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 35
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 37
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-static {p1, v2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1, v3, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 40
    :cond_2
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object v6, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v8, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p1, v8}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 42
    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {v4 .. v12}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logPaySubscriptionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getPromotionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, v5, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 48
    const-string p2, "subscribeOfPromotion inValid, subscribeOfBasic"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-virtual {p2, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 53
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-static {p1, v2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1, v3, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    :cond_3
    :goto_0
    return-void
.end method
