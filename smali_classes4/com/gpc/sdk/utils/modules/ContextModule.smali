.class public Lcom/gpc/sdk/utils/modules/ContextModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextModule"


# instance fields
.field private context:Landroid/content/Context;

.field private sdkMetas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/JSDKMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->sdkMetas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSDKMeta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/JSDKMeta;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->sdkMetas:Ljava/util/List;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/SDKMetaUtil;->getSDKMetas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->sdkMetas:Ljava/util/List;

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
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->context:Landroid/content/Context;

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

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ContextModule;->context:Landroid/content/Context;

    return-void
.end method
