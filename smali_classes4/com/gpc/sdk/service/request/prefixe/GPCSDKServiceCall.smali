.class public Lcom/gpc/sdk/service/request/prefixe/GPCSDKServiceCall;
.super Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
