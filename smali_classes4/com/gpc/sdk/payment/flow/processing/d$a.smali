.class public Lcom/gpc/sdk/payment/flow/processing/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/d;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d$a;->b:Lcom/gpc/sdk/payment/flow/processing/d;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/d$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/gpc/sdk/error/GPCException;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d$a;->b:Lcom/gpc/sdk/payment/flow/processing/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/flow/processing/d;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method
