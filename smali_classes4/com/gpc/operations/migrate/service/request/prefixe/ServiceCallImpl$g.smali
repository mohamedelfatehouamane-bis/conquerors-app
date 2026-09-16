.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;->b:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$h;->b:[I

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa0

    goto :goto_0

    :cond_1
    const/16 p1, 0xbb8

    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_2
    const-string v0, ""

    .line 26
    :goto_1
    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p2

    invoke-direct {v1, p2, p1, v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 27
    new-instance p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;

    invoke-direct {p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;-><init>()V

    .line 28
    iput-object v1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    .line 29
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;->onReponse(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;

    invoke-direct {p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    .line 5
    iput-object v0, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    const/16 v1, 0x1770

    const-string v2, "fail"

    invoke-direct {v0, p2, v1, v2}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 8
    iput-object v0, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;->onReponse(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)V

    return-void
.end method
