.class public Lcom/gpc/sdk/GPCConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chinaMainland:Z

.field private complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

.field private gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

.field private gameId:Ljava/lang/String;

.field private iapItemsPageSize:I

.field private isDelayInit:Z

.field private isHTTPCryptoEnable:Z

.field private isOAIDEnabled:Z

.field private isProcessRepaymentPurchaseEnable:Z

.field private mainActivity:Landroid/app/Activity;

.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    const/16 v0, 0x64

    .line 24
    iput v0, p0, Lcom/gpc/sdk/GPCConfiguration;->iapItemsPageSize:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable:Z

    .line 41
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit:Z

    .line 43
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setGameId(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isChinaMainland()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setChinaMainland(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setIsOAIDEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getIapItemsPageSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setIapItemsPageSize(I)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setMainActivity(Landroid/app/Activity;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setDelayInit(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCConfiguration;->setProcessRepaymentPurchaseEnable(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/GPCConfiguration;->setHTTPCryptoEnable(Z)V

    return-void
.end method

.method public getComplianceReviewConfiguration()Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    return-object v0
.end method

.method public getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIapItemsPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/GPCConfiguration;->iapItemsPageSize:I

    return v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public inComplianceReview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfiguration;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChinaMainland()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->chinaMainland:Z

    return v0
.end method

.method public isDelayInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit:Z

    return v0
.end method

.method public isHTTPCryptoEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable:Z

    return v0
.end method

.method public isOAIDEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled:Z

    return v0
.end method

.method public isProcessRepaymentPurchaseEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable:Z

    return v0
.end method

.method public setChinaMainland(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfiguration;->chinaMainland:Z

    return-void
.end method

.method public setComplianceReviewConfiguration(Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfiguration;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    return-void
.end method

.method public setDelayInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit:Z

    return-void
.end method

.method public setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfiguration;->gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfiguration;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setHTTPCryptoEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable:Z

    return-void
.end method

.method public setIapItemsPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/GPCConfiguration;->iapItemsPageSize:I

    return-void
.end method

.method public setIsOAIDEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled:Z

    return-void
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfiguration;->mainActivity:Landroid/app/Activity;

    return-void
.end method

.method public setProcessRepaymentPurchaseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable:Z

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfiguration;->secretKey:Ljava/lang/String;

    return-void
.end method
