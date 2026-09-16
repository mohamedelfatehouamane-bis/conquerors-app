.class public Lcom/gpc/sdk/service/GPCAppConfigService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/GPCAppConfigService$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;->loadPrimaryConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/sdk/service/GPCAppConfigService$f<",
        "Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;

.field public final synthetic b:Lcom/gpc/sdk/service/GPCAppConfigService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$b;->b:Lcom/gpc/sdk/service/GPCAppConfigService;

    iput-object p2, p0, Lcom/gpc/sdk/service/GPCAppConfigService$b;->a:Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$b;->a:Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;->onAppConfigLoadFinished(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup<",
            "Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;",
            ">;",
            "Lcom/gpc/sdk/bean/GPCEasternStandardTime;",
            "Lcom/gpc/sdk/error/GPCException;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$b;->a:Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;->onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    .line 5
    :try_start_0
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const-string p2, "appconf.fallflat"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;-><init>()V

    .line 11
    iget-object v1, p1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->appConf:Ljava/lang/Object;

    check-cast v1, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    iput-object v1, v0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;->appConf:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 12
    iget-wide v1, p1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->backupsTimeStamp:J

    iput-wide v1, v0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;->backupsTimeStamp:J

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$b;->a:Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;

    invoke-interface {p1, v0, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;->onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    .line 16
    :try_start_1
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const-string p2, "appconf.backup"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method
