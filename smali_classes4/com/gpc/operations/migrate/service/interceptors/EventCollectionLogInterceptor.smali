.class public Lcom/gpc/operations/migrate/service/interceptors/EventCollectionLogInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "EventCollectionLogInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 11
    :cond_1
    new-instance p2, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;

    invoke-direct {p2}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;-><init>()V

    .line 12
    invoke-virtual {p2, v0}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setException(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setURL(Ljava/net/URL;)V

    .line 17
    :cond_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->sdkAPIFailedEvent(Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;)V

    :cond_3
    return-void
.end method

.method public interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 0

    return-void
.end method

.method public interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->isValidResponseCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setHTTPCode(I)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setURL(Ljava/net/URL;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    const-string p1, "response body and header is null."

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 20
    :cond_2
    sget-object p1, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->sdkAPIFailedEvent(Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEvent;)V

    :cond_3
    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
