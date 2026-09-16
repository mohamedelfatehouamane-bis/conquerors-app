.class public Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/network/http/HTTPCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskEndRunnable"
.end annotation


# instance fields
.field callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

.field result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;Lcom/gpc/sdk/service/network/http/HTTPCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "HTTPCallImpl"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-boolean v2, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->e:Z

    if-eqz v2, :cond_0

    .line 2
    const-string v1, "Runtime exception in network thread!!!"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-object v3, v2, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v2, v2, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    invoke-interface {v1, v3, v2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    return-void

    .line 9
    :cond_0
    iget-object v2, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

    if-eqz v2, :cond_2

    .line 11
    iget-object v3, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v1, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-interface {v2, v3, v1}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

    if-eqz v3, :cond_2

    .line 15
    iget-object v1, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-interface {v3, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 19
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->callback:Lcom/gpc/sdk/service/network/http/HTTPCallback;

    iget-object v3, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;->result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-object v3, v3, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    new-instance v4, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v5, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    invoke-direct {v4, v5, v1}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    .line 20
    const-string v2, "[Exception Catching]"

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
