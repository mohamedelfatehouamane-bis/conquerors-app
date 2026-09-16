.class public Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contract"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillingCycleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->f:I

    return v0
.end method

.method public getBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->b:J

    return-wide v0
.end method

.method public getRecurrenceMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->e:I

    return v0
.end method

.method public setBillingCycleCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->f:I

    return-void
.end method

.method public setBillingPeriod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->d:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->c:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->a:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmountMicros(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->b:J

    return-void
.end method

.method public setRecurrenceMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->e:I

    return-void
.end method
