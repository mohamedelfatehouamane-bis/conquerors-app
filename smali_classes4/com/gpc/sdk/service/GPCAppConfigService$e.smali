.class public Lcom/gpc/sdk/service/GPCAppConfigService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;->loadFromSNDAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/GPCAppConfigService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load DynamicAddress Falid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConf"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-static {v0}, Lcom/gpc/sdk/service/GPCAppConfigService;->access$400(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-static {v2}, Lcom/gpc/sdk/service/GPCAppConfigService;->access$300(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/service/GPCAppConfigService$g;

    move-result-object v2

    iget-object v2, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-static {v3}, Lcom/gpc/sdk/service/GPCAppConfigService;->access$300(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/service/GPCAppConfigService$g;

    move-result-object v3

    iget v3, v3, Lcom/gpc/sdk/service/GPCAppConfigService$g;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->getLocalConfig(Ljava/lang/String;I)Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string v2, "load localAppconf Falid."

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v2, "load localAppconf success."

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    new-instance v2, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService$e;Lcom/gpc/sdk/service/appconf/GPCAppConfData;Lcom/gpc/sdk/error/GPCException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppConfigLoadSuccess(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V
    .locals 2

    .line 1
    const-string v0, "AppConf"

    const-string v1, "load SNDAddress succcess."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService;->onAppConfigLoadFinished(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    return-void
.end method
