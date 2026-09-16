.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSubscriptionState(Lcom/gpc/sdk/error/GPCException;Z)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hasSubscribed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCNewPayment"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
