.class public Lcom/gpc/sdk/utils/modules/log/LogModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/log/LogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/log/LogModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/log/LogModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "rec Primary AppConfig notify."

    const-string v1, "LogModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object p1, p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object p1, p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object p1, p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v0, "upload_vip_log"

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;->a:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object v2, v2, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void

    .line 15
    :cond_0
    const-string p1, "should not notify vip log"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    const-string v0, ""

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
