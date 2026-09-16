.class public Lcom/gpc/sdk/service/GPCAppConfigService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/GPCAppConfigService$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;->loadConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/sdk/service/GPCAppConfigService$f<",
        "Lcom/gpc/sdk/bean/GPCAppConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;

.field public final synthetic b:Lcom/gpc/sdk/service/GPCAppConfigService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$a;->b:Lcom/gpc/sdk/service/GPCAppConfigService;

    iput-object p2, p0, Lcom/gpc/sdk/service/GPCAppConfigService$a;->a:Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$a;->a:Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createAppConfig()Lcom/gpc/sdk/bean/GPCAppConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;->onAppConfigLoadFinished(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup<",
            "Lcom/gpc/sdk/bean/GPCAppConfig;",
            ">;",
            "Lcom/gpc/sdk/bean/GPCEasternStandardTime;",
            "Lcom/gpc/sdk/error/GPCException;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$a;->a:Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;->onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/bean/GPCAppConfigBackup;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCAppConfigBackup;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->appConf:Ljava/lang/Object;

    check-cast v1, Lcom/gpc/sdk/bean/GPCAppConfig;

    iput-object v1, v0, Lcom/gpc/sdk/bean/GPCAppConfigBackup;->appConf:Lcom/gpc/sdk/bean/GPCAppConfig;

    .line 6
    iget-wide v1, p1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->backupsTimeStamp:J

    iput-wide v1, v0, Lcom/gpc/sdk/bean/GPCAppConfigBackup;->backupsTimeStamp:J

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$a;->a:Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;

    invoke-interface {p1, v0, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;->onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
