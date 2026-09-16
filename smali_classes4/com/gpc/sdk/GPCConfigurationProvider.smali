.class public Lcom/gpc/sdk/GPCConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/app/Application;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/sdk/GPCGameDelegate;

.field public e:Lcom/gpc/sdk/push/bean/PushType;

.field public f:Z

.field public g:Landroid/app/Activity;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Activity;Ljava/lang/String;Lcom/gpc/sdk/GPCGameDelegate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->a:Z

    .line 6
    sget-object v1, Lcom/gpc/sdk/push/bean/PushType;->FCM:Lcom/gpc/sdk/push/bean/PushType;

    iput-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->e:Lcom/gpc/sdk/push/bean/PushType;

    .line 7
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->f:Z

    const/16 v1, 0x64

    .line 14
    iput v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->h:I

    .line 20
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->i:Z

    .line 22
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->j:Z

    .line 27
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->k:Z

    .line 30
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->b:Landroid/app/Application;

    .line 31
    iput-object p2, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->g:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->d:Lcom/gpc/sdk/GPCGameDelegate;

    return-void
.end method


# virtual methods
.method public createConfiguration()Lcom/gpc/sdk/GPCConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCConfiguration;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setGameId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isChinaMainland()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setChinaMainland(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isOAIDEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setIsOAIDEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setMainActivity(Landroid/app/Activity;)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getIapItemsPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setIapItemsPageSize(I)V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isProcessRepaymentPurchaseEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setProcessRepaymentPurchaseEnable(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isDelayInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setDelayInit(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isHTTPCryptoEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setHTTPCryptoEnable(Z)V

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->b:Landroid/app/Application;

    return-object v0
.end method

.method public getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->d:Lcom/gpc/sdk/GPCGameDelegate;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIapItemsPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->h:I

    return v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public getPushType()Lcom/gpc/sdk/push/bean/PushType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->e:Lcom/gpc/sdk/push/bean/PushType;

    return-object v0
.end method

.method public isChinaMainland()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->a:Z

    return v0
.end method

.method public isDelayInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->j:Z

    return v0
.end method

.method public isHTTPCryptoEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->k:Z

    return v0
.end method

.method public isOAIDEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->f:Z

    return v0
.end method

.method public isProcessRepaymentPurchaseEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->i:Z

    return v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->b:Landroid/app/Application;

    return-void
.end method

.method public setChinaMainland(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->a:Z

    return-void
.end method

.method public setDelayInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->j:Z

    return-void
.end method

.method public setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->d:Lcom/gpc/sdk/GPCGameDelegate;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->c:Ljava/lang/String;

    return-void
.end method

.method public setHTTPCryptoEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->k:Z

    return-void
.end method

.method public setIapItemsPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->h:I

    return-void
.end method

.method public setIsOAIDEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->f:Z

    return-void
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->g:Landroid/app/Activity;

    return-void
.end method

.method public setProcessRepaymentPurchaseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->i:Z

    return-void
.end method

.method public setPushType(Lcom/gpc/sdk/push/bean/PushType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->e:Lcom/gpc/sdk/push/bean/PushType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCConfigurationProvider{ chinaMainland="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", application="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->b:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', gameDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->d:Lcom/gpc/sdk/GPCGameDelegate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->e:Lcom/gpc/sdk/push/bean/PushType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOAIDEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iapItemsPageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDelayInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHTTPCryptoEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/GPCConfigurationProvider;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
