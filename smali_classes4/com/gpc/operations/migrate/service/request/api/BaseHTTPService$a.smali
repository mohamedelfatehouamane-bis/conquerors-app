.class public Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService$a;->a:Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService$a;->a:Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;

    iget-object v0, v0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->headersBuilder:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;->build(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->addHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 0

    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
