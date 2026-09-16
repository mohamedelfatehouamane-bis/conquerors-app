.class public Lcom/gpc/sdk/payment/flow/processing/a$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/processing/a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->f(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v1, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a$j;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-static {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/processing/a;->d(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method
