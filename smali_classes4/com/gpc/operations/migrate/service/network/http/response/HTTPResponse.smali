.class public Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private body:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

.field private code:I

.field private headers:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->headers:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->body:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->code:I

    return v0
.end method

.method public getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->headers:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setBody(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->body:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->code:I

    return-void
.end method

.method public setHeaders(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->headers:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    return-void
.end method
