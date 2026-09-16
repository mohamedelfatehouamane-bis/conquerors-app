.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected acceptEncoding:Ljava/lang/String;

.field private body:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

.field private enableDoOutput:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headersDelegate:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

.field private httpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private writeListener:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url:Ljava/lang/String;

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$000(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;-><init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;)V

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers:Ljava/util/Map;

    .line 90
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$100(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

    .line 91
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$200(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    .line 92
    iget-object v0, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->acceptEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$300(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$300(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->newBuilder()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->httpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$400(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$400(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    :cond_2
    return-void
.end method

.method public static urlAppendQuery(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "&"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/gpc/operations/migrate/utils/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public acceptEncoding(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    return-object p0
.end method

.method public build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$502(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/net/URL;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    const-string v2, ""

    invoke-static {v2, v2, v1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$602(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->enableDoOutput:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$702(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Z)Z

    .line 9
    invoke-static {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$000(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->addHeaders(Ljava/util/Map;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$102(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

    .line 11
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->httpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$302(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    .line 12
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$202(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    .line 13
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding:Ljava/lang/String;

    iput-object v1, v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->acceptEncoding:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->access$402(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->httpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    return-object p0
.end method

.method public setEnableDoOutput(Ljava/lang/Boolean;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->enableDoOutput:Z

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->urlAppendQuery(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public writeListener(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    return-object p0
.end method
