.class public Lcom/gpc/sdk/GPCConfigurationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private chinaMainland:Z

.field private complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

.field private gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

.field private gameId:Ljava/lang/String;

.field private iapItemsPageSize:I

.field private isOAIDEnabled:Z

.field private isProcessRepaymentPurchaseEnable:Z

.field private mainActivity:Landroid/app/Activity;

.field private useExternalStorage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isOAIDEnabled:Z

    const/16 v1, 0x64

    .line 8
    iput v1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->iapItemsPageSize:I

    .line 15
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isProcessRepaymentPurchaseEnable:Z

    return-void
.end method


# virtual methods
.method public build(Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setGameId(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->isChinaMainland()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setChinaMainland(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->isOAIDEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setIsOAIDEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->getComplianceReviewConfiguration()Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setComplianceReviewConfiguration(Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->getIapItemsPageSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setIapItemsPageSize(I)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setMainActivity(Landroid/app/Activity;)V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->isProcessRepaymentPurchaseEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setProcessRepaymentPurchaseEnable(Z)V

    return-void
.end method

.method public getComplianceReviewConfiguration()Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    return-object v0
.end method

.method public getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIapItemsPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->iapItemsPageSize:I

    return v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isChinaMainland()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->chinaMainland:Z

    return v0
.end method

.method public isOAIDEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isOAIDEnabled:Z

    return v0
.end method

.method public isProcessRepaymentPurchaseEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isProcessRepaymentPurchaseEnable:Z

    return v0
.end method

.method public isUseExternalStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->useExternalStorage:Z

    return v0
.end method

.method public setChinaMainland(Z)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->chinaMainland:Z

    return-object p0
.end method

.method public setComplianceReviewConfiguration(Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->complianceReviewConfiguration:Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    return-object p0
.end method

.method public setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->gameDelegate:Lcom/gpc/sdk/GPCGameDelegate;

    return-object p0
.end method

.method public setGameId(Ljava/lang/String;)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->gameId:Ljava/lang/String;

    return-object p0
.end method

.method public setIapItemsPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->iapItemsPageSize:I

    return-void
.end method

.method public setIsOAIDEnabled(Z)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isOAIDEnabled:Z

    return-object p0
.end method

.method public setMainActivity(Landroid/app/Activity;)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->mainActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setProcessRepaymentPurchaseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->isProcessRepaymentPurchaseEnable:Z

    return-void
.end method

.method public setUseExternalStorage(Z)Lcom/gpc/sdk/GPCConfigurationBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationBuilder;->useExternalStorage:Z

    return-object p0
.end method
