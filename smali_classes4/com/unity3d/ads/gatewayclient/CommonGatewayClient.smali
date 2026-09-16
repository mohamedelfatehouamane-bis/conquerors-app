.class public final Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;
.super Ljava/lang/Object;
.source "CommonGatewayClient.kt"

# interfaces
.implements Lcom/unity3d/ads/gatewayclient/GatewayClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonGatewayClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UniversalResponseKt.kt\ngateway/v1/UniversalResponseKtKt\n+ 4 ErrorKt.kt\ngateway/v1/ErrorKtKt\n*L\n1#1,172:1\n1#2:173\n1#2:175\n1#2:177\n8#3:174\n8#4:176\n*S KotlinDebug\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n*L\n149#1:175\n150#1:177\n149#1:174\n150#1:176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 ,2\u00020\u0001:\u0001,B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J1\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ1\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J1\u0010&\u001a\u00020!2\u0006\u0010\'\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;",
        "Lcom/unity3d/ads/gatewayclient/GatewayClient;",
        "httpClient",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        "handleGatewayUniversalResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V",
        "calculateDelayTime",
        "",
        "requestPolicy",
        "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
        "retryCount",
        "",
        "calculateExponentialBackoff",
        "retryWaitBase",
        "calculateJitter",
        "retryWaitTime",
        "retryJitterPct",
        "",
        "getUniversalResponse",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
        "response",
        "Lcom/unity3d/services/core/network/model/HttpResponse;",
        "request",
        "url",
        "",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "operationType",
        "Lcom/unity3d/ads/core/data/model/OperationType;",
        "(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendNetworkErrorDiagnosticEvent",
        "",
        "e",
        "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;",
        "duration",
        "(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendNetworkSuccessDiagnosticEvent",
        "httpResponse",
        "(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldRetry",
        "",
        "responseCode",
        "Companion",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CODE_400:I = 0x190

.field public static final CODE_599:I = 0x257

.field public static final Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

.field public static final RETRY_ATTEMPT_HEADER:Ljava/lang/String; = "X-RETRY-ATTEMPT"


# instance fields
.field private final handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

.field private final httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayUniversalResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 30
    iput-object p2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    .line 31
    iput-object p3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-void
.end method

.method public static final synthetic access$sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final calculateDelayTime(Lcom/unity3d/ads/gatewayclient/RequestPolicy;I)J
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryWaitBase()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateExponentialBackoff(II)J

    move-result-wide v0

    .line 159
    invoke-virtual {p1}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryJitterPct()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateJitter(JF)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final calculateExponentialBackoff(II)J
    .locals 4

    int-to-long v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double p1, p2

    .line 165
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-long p1, p1

    mul-long v0, v0, p1

    return-wide v0
.end method

.method private final calculateJitter(JF)J
    .locals 4

    long-to-float p1, p1

    mul-float p1, p1, p3

    float-to-long p1, p1

    .line 170
    sget-object p3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    neg-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    invoke-virtual {p3, v0, v1, p1, p2}, Lkotlin/random/Random$Default;->nextLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .locals 3

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    .line 137
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, [B

    invoke-static {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom([B)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    const-string v0, "parseFrom(responseBody)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 140
    :cond_0
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    .line 141
    invoke-static {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    const-string v0, "parseFrom(\n             \u2026ring())\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 145
    :cond_1
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Could not parse response from gateway service"

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Failed to parse response from gateway service with exception: %s"

    invoke-static {p1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget-object p1, Lgateway/v1/UniversalResponseKt$Dsl;->Companion:Lgateway/v1/UniversalResponseKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->newBuilder()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgateway/v1/UniversalResponseKt$Dsl$Companion;->_create(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;)Lgateway/v1/UniversalResponseKt$Dsl;

    move-result-object p1

    .line 176
    sget-object v0, Lgateway/v1/ErrorKt$Dsl;->Companion:Lgateway/v1/ErrorKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->newBuilder()Lgateway/v1/ErrorOuterClass$Error$Builder;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgateway/v1/ErrorKt$Dsl$Companion;->_create(Lgateway/v1/ErrorOuterClass$Error$Builder;)Lgateway/v1/ErrorKt$Dsl;

    move-result-object v0

    .line 151
    const-string v1, "ERROR: Could not parse response from gateway service"

    invoke-virtual {v0, v1}, Lgateway/v1/ErrorKt$Dsl;->setErrorText(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lgateway/v1/ErrorKt$Dsl;->_build()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Lgateway/v1/UniversalResponseKt$Dsl;->setError(Lgateway/v1/ErrorOuterClass$Error;)V

    .line 174
    invoke-virtual {p1}, Lgateway/v1/UniversalResponseKt$Dsl;->_build()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    return-object p1
.end method

.method private final sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;",
            "I",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    if-ne p3, v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "operation"

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 110
    const-string p3, "retries"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    .line 111
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "protocol"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 112
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getClient()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "network_client"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 108
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 114
    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {p4, p5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v2, "native_network_failure_time"

    const/4 v5, 0x0

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            "I",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    if-ne p3, v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 126
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "operation"

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 127
    const-string p3, "retries"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    .line 128
    const-string p2, "protocol"

    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getProtocol()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 129
    const-string p2, "network_client"

    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getClient()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 125
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 131
    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {p4, p5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v2, "native_network_success_time"

    const/4 v5, 0x0

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final shouldRetry(I)Z
    .locals 2

    const/16 v0, 0x190

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public request(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    iget v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 43
    iget v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    const-string v5, "ms"

    const-string v6, " retries and duration: "

    const-string v7, "Gateway request failed after "

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v12, :cond_5

    if-eq v4, v11, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_1

    iget-wide v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v15, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v15

    move-object v15, v5

    move-object v5, v8

    move-object v8, v12

    move-wide/from16 v36, v13

    move-object v13, v11

    move-wide/from16 v11, v36

    move-object/from16 v19, v10

    move-object v10, v1

    move-object v1, v9

    move-object v9, v4

    const/4 v4, 0x5

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    iget-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v15

    move-object v15, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v22, v11

    move-object/from16 v19, v12

    move-wide v11, v8

    const/4 v8, 0x3

    goto/16 :goto_7

    :cond_4
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J

    iget-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/services/core/network/model/HttpResponse;

    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    :try_start_0
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v6

    move-object/from16 v16, v15

    move-object/from16 v2, v19

    move-object v15, v5

    move-object/from16 v19, v14

    move-object v14, v1

    const/4 v1, 0x2

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-wide/from16 v36, v10

    move-object v10, v12

    move-wide/from16 v11, v36

    move-object/from16 v18, v6

    move-object v4, v14

    move-object v2, v15

    move-object/from16 v6, v20

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v5, v19

    goto/16 :goto_6

    :cond_5
    move-object/from16 v18, v0

    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J

    iget-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    :try_start_1
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, v18

    move-object/from16 v18, v6

    move-object/from16 v36, v14

    move-object v14, v1

    move-wide v1, v10

    move-object v11, v13

    move-object v10, v15

    move-object/from16 v13, v20

    move-object v15, v5

    move-wide v5, v8

    move-object v8, v12

    move-object/from16 v9, v36

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-wide/from16 v36, v10

    move-object v10, v4

    move-object v4, v12

    move-wide/from16 v11, v36

    move-object v2, v15

    move-object v15, v5

    move-object v5, v2

    move-object/from16 v18, v6

    move-object v2, v14

    move-object/from16 v6, v20

    move-object v14, v1

    goto/16 :goto_6

    :cond_6
    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const-wide/16 v8, 0x0

    move-object/from16 v19, p1

    move-object/from16 v4, p3

    move-object v10, v1

    move-object v13, v2

    move-wide v11, v8

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    move-object v9, v0

    .line 53
    :goto_1
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 54
    const-string v14, "application/x-protobuf"

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "Content-Type"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v14, :cond_7

    .line 56
    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "X-RETRY-ATTEMPT"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v23

    .line 60
    new-instance v18, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 62
    sget-object v21, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 63
    invoke-virtual {v1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->toByteArray()[B

    move-result-object v22

    .line 65
    invoke-virtual {v4}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getConnectTimeout()I

    move-result v28

    .line 66
    invoke-virtual {v4}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getReadTimeout()I

    move-result v29

    .line 67
    invoke-virtual {v4}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getWriteTimeout()I

    move-result v30

    const/16 v34, 0x51e2

    const/16 v35, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    .line 60
    invoke-direct/range {v18 .. v35}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v5

    move-object/from16 v0, v18

    move-object/from16 v14, v19

    move-object/from16 v18, v6

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 75
    :try_start_2
    iget-object v2, v13, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    iput-object v13, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v14, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v1, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v4, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v8, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-wide v11, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iput-wide v5, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J
    :try_end_2
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 p1, v1

    const/4 v1, 0x1

    :try_start_3
    iput v1, v10, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-interface {v2, v0, v10}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_3 .. :try_end_3} :catch_5

    if-ne v0, v3, :cond_8

    goto/16 :goto_9

    :cond_8
    move-object v1, v14

    move-object v14, v10

    move-object v10, v1

    move-wide v1, v11

    move-object v11, v8

    move-object v8, v4

    move-object v4, v9

    move-object/from16 v9, p1

    .line 43
    :goto_2
    :try_start_4
    check-cast v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 76
    iget v12, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v5, v6}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v19

    iput-object v13, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v10, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v8, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v11, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v4, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v0, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v1, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iput-wide v5, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J
    :try_end_4
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_4 .. :try_end_4} :catch_4

    move-wide/from16 v21, v1

    const/4 v1, 0x2

    :try_start_5
    iput v1, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I
    :try_end_5
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v16, v9

    move-object v2, v10

    move v10, v12

    move-object v9, v0

    move-wide/from16 v36, v19

    move-object/from16 v19, v8

    move-object v8, v13

    move-wide/from16 v12, v36

    :try_start_6
    invoke-direct/range {v8 .. v14}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_6 .. :try_end_6} :catch_2

    if-ne v0, v3, :cond_9

    goto/16 :goto_9

    :cond_9
    move-object v12, v4

    move-object/from16 v20, v8

    move-object v4, v9

    move-object v13, v11

    move-wide/from16 v10, v21

    :goto_3
    move-wide v0, v10

    move-object v10, v12

    move-wide v11, v0

    move-object/from16 v1, v16

    move-object/from16 v5, v19

    move-object/from16 v0, v20

    const/4 v8, 0x3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v16, v9

    move-object v2, v10

    move-object v8, v13

    goto :goto_4

    :catch_4
    move-exception v0

    move-wide/from16 v21, v1

    move-object/from16 v19, v8

    move-object/from16 v16, v9

    move-object v2, v10

    move-object v8, v13

    const/4 v1, 0x2

    :goto_4
    move-wide v12, v5

    move-object v6, v8

    move-wide v8, v12

    move-object v5, v2

    move-object v10, v4

    move-object v13, v11

    move-object/from16 v2, v16

    move-object/from16 v4, v19

    move-wide/from16 v11, v21

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 p1, v1

    :goto_5
    const/4 v1, 0x2

    move-object/from16 v2, p1

    move-object/from16 v36, v13

    move-object v13, v8

    move-object/from16 v37, v10

    move-object v10, v9

    move-wide v8, v5

    move-object/from16 v6, v36

    move-object v5, v14

    move-object/from16 v14, v37

    .line 78
    :goto_6
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8, v9}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v23

    iput-object v6, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v5, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v2, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v4, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v13, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v10, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v0, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v11, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    const/4 v8, 0x3

    iput v8, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    move-object/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v13

    move-object/from16 v25, v14

    invoke-direct/range {v19 .. v25}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto/16 :goto_9

    :cond_a
    move-object v14, v2

    move-object v13, v4

    move-object/from16 v4, v20

    move-object/from16 v1, v25

    .line 79
    :goto_7
    invoke-static {v4}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->toHttpResponse(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;)Lcom/unity3d/services/core/network/model/HttpResponse;

    move-result-object v4

    move-object v0, v14

    move-object v14, v1

    move-object v1, v0

    move-object v2, v5

    move-object v5, v13

    move-object/from16 v0, v19

    move-object/from16 v13, v22

    .line 82
    :goto_8
    invoke-virtual {v4}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->shouldRetry(I)Z

    move-result v6

    const/4 v9, 0x0

    if-nez v6, :cond_d

    .line 83
    invoke-static {v4}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 84
    invoke-direct {v0, v4}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object v1

    .line 85
    iget-object v0, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    iput-object v1, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v9, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-interface {v0, v1, v14}, Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;->invoke(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto :goto_9

    :cond_b
    return-object v1

    .line 87
    :cond_c
    new-instance v4, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x7e

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    :cond_d
    move-object/from16 v6, v18

    .line 90
    iget v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v0, v5, v4}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateDelayTime(Lcom/unity3d/ads/gatewayclient/RequestPolicy;I)J

    move-result-wide v8

    add-long/2addr v11, v8

    .line 92
    iput-object v0, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v1, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v5, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v13, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v10, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v11, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    const/4 v4, 0x5

    iput v4, v14, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-static {v8, v9, v14}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_e

    :goto_9
    return-object v3

    :cond_e
    move-object/from16 v19, v2

    move-object v9, v10

    move-object v8, v13

    move-object v10, v14

    move-object v13, v0

    .line 94
    :goto_a
    iget v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 95
    invoke-virtual {v5}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    move-result v0

    move-object/from16 p1, v5

    int-to-long v4, v0

    cmp-long v0, v11, v4

    if-gtz v0, :cond_f

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v15

    goto/16 :goto_1

    .line 97
    :cond_f
    new-instance v20, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v28, 0x7e

    const/16 v29, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v29}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v20
.end method
