.class public Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpAccountSignInterceptor"


# instance fields
.field private aes:Ljava/lang/String;

.field private aesTimestamp:Ljava/lang/String;

.field private aesTimestampMD5:Ljava/lang/String;

.field private apiVersion:Ljava/lang/String;

.field private configVer:Ljava/lang/String;

.field private configuration:Lcom/gpc/sdk/GPCConfiguration;

.field private gameId:Ljava/lang/String;

.field private magnifySign:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private rsaSign:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field public targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private uiid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->targets:Ljava/util/List;

    .line 23
    const-string v1, "/ums/member"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    return-void
.end method

.method private fraudSignStringV21(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance()Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->createCrypto(Lcom/gpc/sdk/GPCConfiguration;)Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- EnableAnticheat\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->enableAnticheat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpAccountSignInterceptor"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "x-gpc-timestamp"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->timestamp:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    const-string v3, "x-gpc-config-ver"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->configVer:Ljava/lang/String;

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->enableAnticheat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    invoke-direct {p0, p2, v2}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->querysForSign(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 17
    invoke-virtual {v0, v1, p2}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->sign(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;

    move-result-object p2

    .line 18
    iget-object v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aes:Ljava/lang/String;

    .line 19
    iget-object v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aesTimestamp:Ljava/lang/String;

    .line 20
    iget-object v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampMD5Value:Ljava/lang/String;

    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aesTimestampMD5:Ljava/lang/String;

    .line 21
    iget-object v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->signValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->magnifySign:Ljava/lang/String;

    .line 22
    iget-object v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSAValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->rsaSign:Ljava/lang/String;

    .line 24
    iget-boolean v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->parsingConfiguration:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v4, "x-gpc-a"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->AES:Z

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    const-string v4, "x-gpc-b"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-boolean v1, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSA:Z

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    const-string v4, "x-gpc-c"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->isErrorForConfigLen()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v3

    :cond_4
    const-string v0, "x-gpc-d"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p2, p2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->sign:Ljava/lang/String;

    const-string v0, "x-gpc-sign-v2"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private getServerTime()J
    .locals 5

    .line 1
    const-string v0, "HttpAccountSignInterceptor"

    .line 0
    const-string v1, "severTimestamp:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->isSynchronizedServerTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->getSeverTimestamp()J

    move-result-wide v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 6
    :cond_0
    const-string v1, "without Async Server Time"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private querysForSign(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->udid:Ljava/lang/String;

    const-string v1, "x-gpc-udid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->uiid:Ljava/lang/String;

    const-string v1, "x-gpc-uiid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->gameId:Ljava/lang/String;

    const-string v1, "x-gpc-game-id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->nonce:Ljava/lang/String;

    const-string v1, "x-gpc-nonce"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->apiVersion:Ljava/lang/String;

    const-string v1, "x-gpc-ver"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string p1, "x-gpc-config-ver"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public create()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "trace-id"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "sign"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "config-ver"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->configVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "game-id"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "ver"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "udid"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "uiid"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->uiid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "aes"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v1, "aes-timestamp"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aesTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "aes-timestamp-md5"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->aesTimestampMD5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v1, "magnify-sign"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->magnifySign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "rsa-sign"

    iget-object v2, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->rsaSign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 19
    const-string v2, "HttpAccountSignInterceptor"

    const-string v3, "create(traceId)"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-sign"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->sign:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-trace-id"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->traceId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-uiid"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->uiid:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-udid"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->udid:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-nonce"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->nonce:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-game-id"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->gameId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "x-gpc-ver"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->apiVersion:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->sign:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->fraudSignStringV21(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->isSignFail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;->create()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoFlashback(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    const-string p2, "HttpAccountSignInterceptor"

    const-string p3, "interceptResponse"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isSignFail(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "collect_event"

    const-string v1, "extra"

    const-string v2, "error"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    const-string v0, "HttpAccountSignInterceptor"

    const-string v1, "isSignFail"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    return v3
.end method

.method public priority()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method
