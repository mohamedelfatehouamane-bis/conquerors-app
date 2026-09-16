.class public Lcom/gpc/sdk/service/interceptors/EventCollectionLogInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPInterceptor;


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
.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 7
    :goto_0
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 11
    :cond_1
    new-instance p3, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;

    invoke-direct {p3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;-><init>()V

    .line 12
    invoke-virtual {p3, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setException(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setURL(Ljava/net/URL;)V

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    const-string p2, "x-gpc-trace-id"

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 20
    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setTraceId(Ljava/lang/String;)V

    .line 24
    :cond_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkAPIFailedEvent(Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;)V

    :cond_4
    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 2

    if-eqz p3, :cond_4

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;->getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getRemoteApi()Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    move-result-object v0

    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;->isValidResponseCode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;-><init>()V

    .line 5
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setHTTPCode(I)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setURL(Ljava/net/URL;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    const-string p1, "response body and header is null."

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setMsg(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    const-string p2, "x-gpc-trace-id"

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 23
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->setTraceId(Ljava/lang/String;)V

    .line 27
    :cond_3
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkAPIFailedEvent(Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;)V

    :cond_4
    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
