.class public Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedPointsAwarded()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPointsAwarded()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->a:I

    return v0
.end method

.method public getRewardDisplay()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->getFormattedPointsAwarded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->getRewardName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPointsAwarded(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->a:I

    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->b:Ljava/lang/String;

    return-void
.end method
