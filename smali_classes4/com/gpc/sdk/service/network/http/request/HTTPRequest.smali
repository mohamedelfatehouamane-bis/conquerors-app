.class public Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;
    }
.end annotation


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final PATCH:Ljava/lang/String; = "PATCH"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field private static final TAG:Ljava/lang/String; = "HTTPRequest"


# instance fields
.field private body:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

.field private enableDoOutput:Z

.field private headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

.field private headersDelegate:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

.field private httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

.field private method:Ljava/lang/String;

.field private processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field private url:Ljava/net/URL;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private writeListener:Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->urls:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    .line 11
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headersDelegate:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headersDelegate:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->writeListener:Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->writeListener:Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->body:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->body:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->method:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->enableDoOutput:Z

    return p1
.end method

.method private mapQuery(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 6
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 8
    aget-object v5, v4, v2

    const/4 v6, 0x1

    .line 9
    aget-object v4, v4, v6

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HTTPRequest"

    invoke-static {v7, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public appendQuery(Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->queryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, v3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->mapQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public changeUrl(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    const-string v0, "HTTPRequest"

    const-string v1, "ChangeUrl"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public enableDoOutput()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->enableDoOutput:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->body:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    return-object v0
.end method

.method public getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    return-object v0
.end method

.method public getHeadersDelegate()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headersDelegate:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    return-object v0
.end method

.method public getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPathWithParams()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-object v0
.end method

.method public getRecordedUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getWriteListener()Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->writeListener:Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;

    return-object v0
.end method

.method public newBuilder()Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    return-object v0
.end method

.method public recordCurrentUrl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->urls:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBody(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->body:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    return-void
.end method

.method public setHeaders(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    return-void
.end method

.method public setHeadersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->headersDelegate:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    return-void
.end method

.method public setHttpRequestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->httpRequestConfig:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setProcessedRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->url:Ljava/net/URL;

    return-void
.end method

.method public setWriteListener(Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->writeListener:Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;

    return-void
.end method
