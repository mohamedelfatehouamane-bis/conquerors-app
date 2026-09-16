.class public Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

.field public b:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->b:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    return-object v0
.end method

.method public getQuota()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->c:D

    return-wide v0
.end method

.method public getRemainingQuota()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->d:D

    return-wide v0
.end method

.method public getRuleType()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->a:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    return-object v0
.end method

.method public getUsedQuote()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->e:D

    return-wide v0
.end method

.method public setCurrency(Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->b:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    return-void
.end method

.method public setQuota(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->c:D

    return-void
.end method

.method public setRemainingQuota(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->d:D

    return-void
.end method

.method public setRuleType(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->a:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    return-void
.end method

.method public setUsedQuote(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleImposedOn;->e:D

    return-void
.end method
