.class public Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;
.implements Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModulesCompatProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuestDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 5

    .line 1
    const-string v0, "ServiceFactoryModule"

    .line 0
    const-string v1, "severTimestamp:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronizedServerTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->getSeverTimestamp()J

    move-result-wide v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 6
    :cond_0
    const-string v1, "without Async Server Time"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onInvalidDate()V
    .locals 0

    return-void
.end method
