.class public Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DISABLE:D = -1.0

.field public static final UNLIMITED:D


# instance fields
.field private daily:D

.field private monthly:D

.field private single:D

.field private text:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->single:D

    .line 16
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->daily:D

    .line 20
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->monthly:D

    return-void
.end method


# virtual methods
.method public getDaily()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->daily:D

    return-wide v0
.end method

.method public getMonthly()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->monthly:D

    return-wide v0
.end method

.method public getSingle()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->single:D

    return-wide v0
.end method

.method public getText()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->text:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;

    return-object v0
.end method

.method public setDaily(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->daily:D

    return-void
.end method

.method public setMonthly(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->monthly:D

    return-void
.end method

.method public setSingle(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->single:D

    return-void
.end method

.method public setText(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->text:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;

    return-void
.end method
