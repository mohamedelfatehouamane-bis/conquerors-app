.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->a:Lcom/gpc/sdk/error/GPCException;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->a:Lcom/gpc/sdk/error/GPCException;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method
