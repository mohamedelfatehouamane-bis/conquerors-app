.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader;->loadItems(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$a;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    invoke-virtual {v0, v1}, Lcom/gpc/util/SDKTask;->excuteInMainLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaymentCardsLoadedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a$b;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentCardsLoader$a;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    invoke-virtual {v0, v1}, Lcom/gpc/util/SDKTask;->excuteInMainLooper(Ljava/lang/Runnable;)V

    return-void
.end method
