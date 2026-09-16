.class public Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;
.super Lcom/gpc/sdk/service/request/GPCSignHeadersBuilder;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private headsBuilder:Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/request/GPCSignHeadersBuilder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;->baseUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;->headsBuilder:Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    return-void
.end method


# virtual methods
.method public buildHeaders(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;->headsBuilder:Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;->build(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/request/client/ServiceClientHeadersBuilder;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
