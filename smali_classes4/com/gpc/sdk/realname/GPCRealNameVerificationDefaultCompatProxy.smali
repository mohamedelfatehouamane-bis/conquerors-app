.class public Lcom/gpc/sdk/realname/GPCRealNameVerificationDefaultCompatProxy;
.super Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonWebViewRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getCommonWebViewRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GPCSDK_REALNAME_VERIFICATION"

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
