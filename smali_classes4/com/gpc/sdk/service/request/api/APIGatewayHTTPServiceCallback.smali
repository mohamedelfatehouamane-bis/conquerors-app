.class public Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;
    }
.end annotation


# static fields
.field private static final HTTP_FAILED_TO_RETRIEVE_CREDENTIAL_BY_USERNAME_ERROR_CODE:J = 0x4c4b406L

.field private static final HTTP_SIGNATURE_DATE_ERROR_CODE:J = 0x4c4b401L

.field private static final HTTP_SIGNATURE_NOT_SAME_ERROR_CODE:J = 0x4c4b407L

.field public static final HTTP_UNAUTHORIZED_CODE:I = 0x191

.field public static final HTTP_UNAUTHORIZED_ERROR_CODE:J = 0x4c4b400L

.field private static final HTTP_USERNAME_OR_SIGNATURE_MISSING_ERROR_CODE:J = 0x4c4b403L

.field public static final RESPONSE_BODY_TYP:Ljava/lang/String; = "api_gateway"

.field private static final TAG:Ljava/lang/String; = "APIGatewayHTTPCallback"


# instance fields
.field private apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

.field private handler:Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;

.field private original:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->original:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->handler:Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->original:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 6

    const-string v0, "code"

    const-string v1, "type"

    const-string v2, "APIGatewayHTTPCallback"

    const-string v3, "Game ID:"

    const-string v4, "response :"

    .line 1
    iget-object v5, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->original:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    if-eqz v5, :cond_8

    .line 2
    invoke-interface {v5, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v5, 0x191

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string v1, "api_gateway"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/32 v0, 0x4c4b401

    cmp-long v4, v0, p1

    if-nez v4, :cond_5

    .line 28
    iget-object p1, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->handler:Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    if-eqz p1, :cond_8

    .line 29
    invoke-interface {p1}, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;->onInvalidDate()V

    return-void

    :cond_5
    const-wide/32 v0, 0x4c4b403

    cmp-long v4, v0, p1

    if-eqz v4, :cond_6

    const-wide/32 v0, 0x4c4b407

    cmp-long v4, v0, p1

    if-eqz v4, :cond_6

    const-wide/32 v0, 0x4c4b406

    cmp-long v4, v0, p1

    if-nez v4, :cond_8

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    if-nez p1, :cond_7

    .line 36
    const-string p1, "API Gate Way config is null, is SDK inited?"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_7
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->getSecretKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/SensitiveUtils;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Key:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Please check that they are configured correctly!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    const-string p2, ""

    invoke-static {v2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method
