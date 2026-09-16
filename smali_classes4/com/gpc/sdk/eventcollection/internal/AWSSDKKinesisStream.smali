.class public final Lcom/gpc/sdk/eventcollection/internal/AWSSDKKinesisStream;
.super Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/PathModule;->getCacheRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/EventCollection/sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
