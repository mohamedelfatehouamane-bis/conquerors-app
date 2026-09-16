.class public Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primary_app_config_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ConfigurationSyncModule"

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    const-string p1, "Primary config time is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :goto_0
    move-wide v3, v0

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;->metaData:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    iget-object v7, p1, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;->metaData:Ljava/lang/String;

    const-string v8, "primary_app_config_notification"

    invoke-virtual/range {v2 .. v8}, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;->sendBroadcastReceiver(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "time_sync"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    const-string v0, "TIME_SYNC"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule$a;->a:Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    iget-object v5, p1, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;->metaData:Ljava/lang/String;

    const-string v6, "time_sync"

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;->sendBroadcastReceiver(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
