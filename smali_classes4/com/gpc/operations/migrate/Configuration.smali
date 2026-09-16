.class public Lcom/gpc/operations/migrate/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private chinaMainland:Z

.field private complianceReviewConfiguration:Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

.field private familyConfTxt:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private iapItemsPageSize:I

.field private isOAIDEnabled:Z

.field private mainActivity:Landroid/app/Activity;

.field private paymentKey:Ljava/lang/String;

.field private proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->complianceReviewConfiguration:Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

    const/16 v0, 0x64

    .line 34
    iput v0, p0, Lcom/gpc/operations/migrate/Configuration;->iapItemsPageSize:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/Configuration;->isOAIDEnabled:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/gpc/operations/migrate/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setAppId(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setGameId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setSecretKey(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getPaymentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setPaymentKey(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->isChinaMainland()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setChinaMainland(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->isOAIDEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setIsOAIDEnabled(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getComplianceReviewConfiguration()Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setComplianceReviewConfiguration(Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;)V

    .line 8
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getIapItemsPageSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/Configuration;->setIapItemsPageSize(I)V

    .line 9
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/Configuration;->getMainActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/Configuration;->setMainActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getComplianceReviewConfiguration()Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->complianceReviewConfiguration:Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

    return-object v0
.end method

.method public getFamilyConfTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->familyConfTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIapItemsPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/Configuration;->iapItemsPageSize:I

    return v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPaymentKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->paymentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public inComplianceReview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/Configuration;->complianceReviewConfiguration:Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

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
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/Configuration;->chinaMainland:Z

    return v0
.end method

.method public isOAIDEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/Configuration;->isOAIDEnabled:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->appId:Ljava/lang/String;

    return-void
.end method

.method public setChinaMainland(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/Configuration;->chinaMainland:Z

    return-void
.end method

.method public setComplianceReviewConfiguration(Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->complianceReviewConfiguration:Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;

    return-void
.end method

.method public setFamilyConfTxt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->familyConfTxt:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setIapItemsPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/Configuration;->iapItemsPageSize:I

    return-void
.end method

.method public setIsOAIDEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/Configuration;->isOAIDEnabled:Z

    return-void
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->mainActivity:Landroid/app/Activity;

    return-void
.end method

.method public setPaymentKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->paymentKey:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->proxy:Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/Configuration;->secretKey:Ljava/lang/String;

    return-void
.end method
