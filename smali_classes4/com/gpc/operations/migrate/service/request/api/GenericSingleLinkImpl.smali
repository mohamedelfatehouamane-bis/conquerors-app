.class public Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;
.super Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericClientImpl"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->httpFactory()Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;

    invoke-direct {v1, p0, v0}, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)V

    return-object v1
.end method
