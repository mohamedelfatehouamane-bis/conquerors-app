.class public Lcom/gpc/sdk/payment/flow/client/google/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCPaymentParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->e:I

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getType()I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->a:I

    .line 9
    const-string v0, "offerToken"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->b:Ljava/lang/String;

    .line 10
    const-string v0, "olderItemId"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->d:Ljava/lang/String;

    .line 11
    const-string v0, "prorationMode"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->e:I

    .line 12
    const-string v0, "oldPurchaseToken"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->f:Ljava/lang/String;

    .line 13
    const-string v0, "promotionToken"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->c:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/flow/client/google/b;->a:I

    return v0
.end method
