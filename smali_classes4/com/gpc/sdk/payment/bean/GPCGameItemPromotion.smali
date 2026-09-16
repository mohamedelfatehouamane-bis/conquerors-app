.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountsFor:I

.field private endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

.field private freePoints:I

.field private localizedMemo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;-><init>()V

    .line 3
    const-string v1, "point"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->setFreePoints(I)V

    .line 6
    new-instance v1, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 7
    const-string v2, "end_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->setEndAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    .line 9
    const-string v1, "memo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->setLocalizedMemo(Ljava/lang/String;)V

    .line 10
    const-string v1, "percent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->setAccountsFor(I)V

    return-object v0
.end method


# virtual methods
.method public getAccountsFor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->accountsFor:I

    return v0
.end method

.method public getEndAt()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public getFreePoints()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->freePoints:I

    return v0
.end method

.method public getLocalizedMemo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->localizedMemo:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountsFor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->accountsFor:I

    return-void
.end method

.method public setEndAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method

.method public setFreePoints(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->freePoints:I

    return-void
.end method

.method public setLocalizedMemo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->localizedMemo:Ljava/lang/String;

    return-void
.end method
