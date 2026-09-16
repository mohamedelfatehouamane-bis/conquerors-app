.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

.field public b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

.field public c:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "advanceNotice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->d:Ljava/lang/String;

    return-void
.end method

.method public final advanceNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    return-object v0
.end method

.method public final getPurchase()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->c:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    return-object v0
.end method

.method public final getTime()Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    return-object v0
.end method

.method public final setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    return-void
.end method

.method public final setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->c:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    return-void
.end method

.method public final setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    return-void
.end method
