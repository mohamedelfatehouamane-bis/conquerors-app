.class public final Lcom/unity3d/ads/core/domain/AndroidLoad;
.super Ljava/lang/Object;
.source "AndroidLoad.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/Load;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J1\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidLoad;",
        "Lcom/unity3d/ads/core/domain/Load;",
        "defaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getAdRequest",
        "Lcom/unity3d/ads/core/domain/GetAdRequest;",
        "getRequestPolicy",
        "Lcom/unity3d/ads/core/domain/GetRequestPolicy;",
        "handleGatewayAdResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "gatewayClient",
        "Lcom/unity3d/ads/gatewayclient/GatewayClient;",
        "adRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)V",
        "invoke",
        "Lcom/unity3d/ads/core/data/model/LoadResult;",
        "context",
        "Landroid/content/Context;",
        "placement",
        "",
        "opportunityId",
        "Lcom/google/protobuf/ByteString;",
        "loadAdResponse",
        "Lgateway/v1/AdResponseOuterClass$AdResponse;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

.field private final getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

.field private final handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)V
    .locals 1

    const-string v0, "defaultDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRequestPolicy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayAdResponse"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    .line 20
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 21
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 22
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 23
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 24
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-void
.end method

.method public static final synthetic access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-object p0
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-object p0
.end method

.method public static final synthetic access$getGetAdRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object p0
.end method

.method public static final synthetic access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lgateway/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidLoad;Lgateway/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lcom/google/protobuf/ByteString;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
