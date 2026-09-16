.class public Lcom/gpc/sdk/payment/flow/client/samsung/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/samsung/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/samsung/a$f;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/samsung/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/samsung/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;->a:Lcom/gpc/sdk/payment/flow/client/samsung/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;->a:Lcom/gpc/sdk/payment/flow/client/samsung/a$f;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/client/samsung/a$f;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;->a:Lcom/gpc/sdk/payment/flow/client/samsung/a$f;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/samsung/a$f;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
