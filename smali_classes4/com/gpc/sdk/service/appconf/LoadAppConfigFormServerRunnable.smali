.class public Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;,
        Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x1388

.field private static final SO_TIME_OUT:I = 0x1388

.field private static TAG:Ljava/lang/String; = "LoadAppConfigFormServerRunnable"

.field private static final TIME_OUT_ERROR:Ljava/lang/String; = "-1"


# instance fields
.field private context:Landroid/content/Context;

.field private httpCall:Lcom/gpc/sdk/service/network/http/HTTPCall;

.field private isCancel:Z

.field private listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

.field private requestStartTime:J

.field private service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

.field private serviceLink:Ljava/lang/String;

.field private timerTask:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->serviceLink:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->timerFactory()Lcom/gpc/sdk/utils/factory/ITimerFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/utils/factory/ITimerFactory;->createTimerModule()Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->timerTask:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;

    .line 5
    iput-object p3, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->context:Landroid/content/Context;

    return-void
.end method

.method private isResponseCorrectly(Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    const-string p2, "x-gpc-meta"

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeadersWithLowerCaseKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public onHeadersRequestFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->requestStartTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->timerTask:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;

    invoke-interface {v2}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;->cancelTask()V

    .line 4
    iget-boolean v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->isCancel:Z

    if-nez v2, :cond_4

    .line 5
    sget-object v2, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 7
    sget-object v2, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "headers:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    sget-object v2, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;->onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->isResponseCorrectly(Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    new-instance p1, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;

    iget-object v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->context:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->context:Landroid/content/Context;

    invoke-virtual {p1, v2, p2, p3}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->create(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    invoke-interface {p2, p1, v0, v1}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;->onAppConfigLoadSuccess(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    goto :goto_0

    .line 20
    :cond_2
    sget-object p1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string p2, "appconf \u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    const-string p2, "100202"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;->onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_0

    .line 24
    :cond_3
    sget-object p1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string p2, "appconf header \u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "100201"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;->onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_0

    .line 30
    :cond_4
    const-string p1, "AppConf"

    const-string p2, "response,but task is canceled."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    sget-object p1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string p2, "response rev, stop"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string v1, "Time out"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->stop()V

    .line 3
    sget-object v0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string v1, "Time out, cancel task."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    const-string v1, "-1"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;->onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->timerTask:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;

    invoke-interface {v0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;->cancelTask()V

    return-void
.end method

.method public start(Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->listener:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->timerTask:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;

    const/16 v0, 0x1388

    invoke-interface {p1, p0, v0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;->schedule(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    iget-object v2, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->serviceLink:Ljava/lang/String;

    new-instance v5, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v5}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x1388

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequestWithourRetry(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    iput-object p1, v6, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->httpCall:Lcom/gpc/sdk/service/network/http/HTTPCall;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->requestStartTime:J

    .line 7
    sget-object p1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpCall :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->httpCall:Lcom/gpc/sdk/service/network/http/HTTPCall;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->isCancel:Z

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->httpCall:Lcom/gpc/sdk/service/network/http/HTTPCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1, v0}, Lcom/gpc/sdk/service/network/http/HTTPCall;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    sget-object v1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->TAG:Ljava/lang/String;

    const-string v2, "httpCall cancel error!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->httpCall:Lcom/gpc/sdk/service/network/http/HTTPCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
