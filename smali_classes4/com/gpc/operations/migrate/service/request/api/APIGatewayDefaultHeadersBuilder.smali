.class public Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;
    }
.end annotation


# static fields
.field private static final CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final RANDOM_STRING:[C

.field private static final TAG:Ljava/lang/String; = "APIGatewayDefaultHeadersBuilder"


# instance fields
.field private UIID:Ljava/lang/String;

.field private compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

.field private gameId:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private secretToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->RANDOM_STRING:[C

    return-void
.end method

.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->gameId:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->secretKey:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;->getToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->secretToken:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/IdsManager;->sharedInstance()Lcom/gpc/operations/migrate/IdsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/IdsManager;->getUIID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->UIID:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

    return-void
.end method

.method private generateAuthorization(Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string p1, "Generate authorization error,url is null."

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 18
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_2

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28
    :cond_3
    const-string p1, "request-line"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HmacSHA256"

    invoke-direct {p0, p2, p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getHmacAlgorithmResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->secretToken:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hmac username=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "algorithm=\"hmac-sha256\", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "headers=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "signature=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHmacAlgorithmResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    const-string v1, "APIGatewayDefaultHeadersBuilder"

    .line 1
    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->secretKey:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 9
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->secretKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    invoke-virtual {p1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 19
    invoke-static {v1, v3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    invoke-static {v1, v3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 21
    invoke-static {v1, v3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v3
.end method

.method private static getSHA256bytes([B)[B
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    const-string v0, "APIGatewayDefaultHeadersBuilder"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getTraceId()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 4
    sget-object v3, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->RANDOM_STRING:[C

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;",
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

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

    invoke-interface {v2}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;->getServerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 12
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 14
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GMT"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "APIGatewayDefaultHeadersBuilder"

    const-string v4, ""

    if-nez v1, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v1

    const-string v5, "flag_ignore_apigateway_digest"

    invoke-virtual {v1, v5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    const-string v1, "http config ignore body digest"

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    if-nez v1, :cond_2

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getSHA256bytes([B)[B

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/gpc/operations/migrate/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [B

    .line 38
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    .line 40
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getSHA256bytes([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 42
    invoke-static {v3, v4, v5}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v1, :cond_4

    .line 44
    array-length v5, v1

    if-eqz v5, :cond_4

    .line 45
    invoke-static {v1}, Lcom/gpc/operations/migrate/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getSHA256bytes([B)[B

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/gpc/operations/migrate/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "SHA-256="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Digest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

    const-string v2, "x-gpc-udid"

    if-eqz v1, :cond_6

    .line 61
    invoke-interface {v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 62
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->compatProxy:Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;

    invoke-interface {v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 66
    :cond_6
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "getDeviceRegisterId is null."

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->UIID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 71
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->UIID:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_8
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getIdAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-family"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-game-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-nonce"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "x-gpc-evo"

    const-string v2, "1;gpc=s2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->generateAuthorization(Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string v1, "Authorization"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->getTraceId()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v1, "x-gpc-trace-id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;->gameId:Ljava/lang/String;

    return-object v0
.end method
