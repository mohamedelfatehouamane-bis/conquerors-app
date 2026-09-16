.class public Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;->getHTTPServiceCallback(Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$b;->b:Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$b;->a:Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$c;->b:[I

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->getCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa0

    goto :goto_0

    :cond_1
    const/16 v0, 0xbb8

    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 23
    :cond_2
    const-string v1, ""

    .line 26
    :goto_1
    new-instance v2, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p2

    invoke-direct {v2, p2, v0, v1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 27
    new-instance p2, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;-><init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 28
    iput-object v2, p2, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    .line 29
    iget-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$b;->a:Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;->onReponse(Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;-><init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 2
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 3
    new-instance p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {p1, v1, v2, v3}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    const/16 v2, 0x1770

    const-string v3, "fail"

    invoke-direct {p1, v1, v2, v3}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;-><init>(IILjava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    .line 11
    :cond_1
    iput-object p1, v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl$b;->a:Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;->onReponse(Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;)V

    return-void
.end method
