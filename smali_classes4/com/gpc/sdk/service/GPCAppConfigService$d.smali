.class public Lcom/gpc/sdk/service/GPCAppConfigService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;->loadFromDynamicAddress()V
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
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$d;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load DynamicAddress Falid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConf"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$d;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-static {p1}, Lcom/gpc/sdk/service/GPCAppConfigService;->access$200(Lcom/gpc/sdk/service/GPCAppConfigService;)V

    return-void
.end method

.method public onAppConfigLoadSuccess(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V
    .locals 2

    .line 1
    const-string v0, "AppConf"

    const-string v1, "load DynamicAddress succcess."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$d;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService;->onAppConfigLoadFinished(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    return-void
.end method
