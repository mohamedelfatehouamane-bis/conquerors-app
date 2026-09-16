.class public Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/ServerTimeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)J

    move-result-wide v2

    const-string v4, "ServerTimeModule"

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 7
    const-string p1, "last NTP Success Time in time period\uff0cignore appconfig time."

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 11
    const-string v0, "rec Primary AppConfig notify."

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const-string p1, "local time."

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    if-nez v0, :cond_2

    .line 18
    const-string p1, "Primary config time is null"

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    .line 22
    const-string p1, "RequestTime less than 0."

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "server time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",request time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->updateServerTimeAppConf(JJ)V

    :cond_5
    return-void
.end method
