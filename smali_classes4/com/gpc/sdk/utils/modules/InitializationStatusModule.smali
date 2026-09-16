.class public Lcom/gpc/sdk/utils/modules/InitializationStatusModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final GPC_SDK_INIT_INSTALL:Ljava/lang/String; = "gpc_sdk_init_install"


# instance fields
.field private storage:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/InitializationStatusModule;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc_sdk_init_install"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logSDKInitInstall()V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/InitializationStatusModule;->storage:Lcom/gpc/util/LocalStorage;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/gpc/util/LocalStorage;

    const-string v0, "sdk_initialization_status.profile"

    invoke-direct {p2, p1, v0}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/InitializationStatusModule;->storage:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
