.class public final Lcom/gpc/aws/regions/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = "amazonaws.com"


# instance fields
.field private final domain:Ljava/lang/String;

.field private final httpSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final httpsSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final serviceEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/regions/Region;->httpSupport:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/regions/Region;->httpsSupport:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/gpc/aws/regions/Region;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/gpc/aws/regions/Region;->domain:Ljava/lang/String;

    return-void

    .line 50
    :cond_1
    :goto_0
    const-string p1, "amazonaws.com"

    iput-object p1, p0, Lcom/gpc/aws/regions/Region;->domain:Ljava/lang/String;

    return-void
.end method

.method public static getRegion(Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/regions/Region;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/aws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/gpc/aws/regions/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/gpc/aws/regions/Region;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/gpc/aws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/gpc/aws/regions/Region;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createClient(Ljava/lang/Class;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/AmazonWebServiceClient;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/gpc/aws/AmazonWebServiceClient;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/gpc/aws/auth/AWSCredentialsProvider;",
            "Lcom/gpc/aws/ClientConfiguration;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 175
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonWebServiceClient;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 177
    new-array p2, v1, [Ljava/lang/Class;

    const-class v2, Lcom/gpc/aws/ClientConfiguration;

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonWebServiceClient;

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 180
    new-array p3, v1, [Ljava/lang/Class;

    const-class v2, Lcom/gpc/aws/auth/AWSCredentialsProvider;

    aput-object v2, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonWebServiceClient;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 183
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/gpc/aws/auth/AWSCredentialsProvider;

    aput-object v4, v3, v0

    const-class v4, Lcom/gpc/aws/ClientConfiguration;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 185
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonWebServiceClient;

    .line 188
    :goto_0
    invoke-virtual {p2, p0}, Lcom/gpc/aws/AmazonWebServiceClient;->setRegion(Lcom/gpc/aws/regions/Region;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 191
    :goto_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t instantiate instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 197
    instance-of v0, p1, Lcom/gpc/aws/regions/Region;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 200
    :cond_0
    check-cast p1, Lcom/gpc/aws/regions/Region;

    .line 201
    invoke-virtual {p0}, Lcom/gpc/aws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/aws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->domain:Ljava/lang/String;

    return-object v0
.end method

.method getHttpSupport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpSupport:Ljava/util/Map;

    return-object v0
.end method

.method getHttpsSupport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpsSupport:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getServiceEndpoints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    return-object v0
.end method

.method public hasHttpEndpoint(Ljava/lang/String;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasHttpsEndpoint(Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpsSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->httpsSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/gpc/aws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isServiceSupported(Ljava/lang/String;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/gpc/aws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/gpc/aws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
