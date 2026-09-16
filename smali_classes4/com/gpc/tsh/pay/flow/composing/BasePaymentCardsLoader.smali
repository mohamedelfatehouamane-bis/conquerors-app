.class public abstract Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;,
        Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;,
        Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "BasePaymentCardsLoader"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/tsh/pay/service/PaymentService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/ops/o;->a()Lcom/gpc/tsh/pay/service/PaymentService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;->c:Lcom/gpc/tsh/pay/service/PaymentService;

    .line 5
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;-><init>(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V

    return-object v0
.end method

.method public abstract b(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
.end method
