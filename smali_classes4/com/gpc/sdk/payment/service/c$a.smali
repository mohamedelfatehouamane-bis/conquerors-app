.class public Lcom/gpc/sdk/payment/service/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/c;->submitAmazon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/c;Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/c$a;->c:Lcom/gpc/sdk/payment/service/c;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-interface {p2, v1, v1, v0}, Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;->onPurchaseSubmittalFinished(ZZLjava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p2

    const/4 v0, -0x8

    if-ne p2, v0, :cond_2

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-interface {p2, v1, p3, v0}, Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;->onPurchaseSubmittalFinished(ZZLjava/lang/String;)V

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-interface {p2, p3, p3, v0}, Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;->onPurchaseSubmittalFinished(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 17
    const-string v0, "PurchaseGatewayServiceAGImpl"

    invoke-static {v0, p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-interface {p1, p3, p3, p2}, Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;->onPurchaseSubmittalFinished(ZZLjava/lang/String;)V

    return-void

    .line 20
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/c$a;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$a;->b:Ljava/lang/String;

    invoke-interface {p1, p3, p3, p2}, Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;->onPurchaseSubmittalFinished(ZZLjava/lang/String;)V

    return-void
.end method
