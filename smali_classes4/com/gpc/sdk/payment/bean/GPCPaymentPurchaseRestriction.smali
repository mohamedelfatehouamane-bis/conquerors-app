.class public Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseRestriction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private antiAddictionEnable:Z

.field private antiAddictionPeriodCostQuota:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAntiAddictionPeriodCostQuota()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseRestriction;->antiAddictionPeriodCostQuota:F

    return v0
.end method

.method public isAntiAddictionEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseRestriction;->antiAddictionEnable:Z

    return v0
.end method

.method public setAntiAddictionEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseRestriction;->antiAddictionEnable:Z

    return-void
.end method

.method public setAntiAddictionPeriodCostQuota(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseRestriction;->antiAddictionPeriodCostQuota:F

    return-void
.end method
