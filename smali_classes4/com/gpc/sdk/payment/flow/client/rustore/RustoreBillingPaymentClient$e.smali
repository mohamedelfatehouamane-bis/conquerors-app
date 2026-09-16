.class public Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

.field public final synthetic b:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-interface {v0, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void
.end method
