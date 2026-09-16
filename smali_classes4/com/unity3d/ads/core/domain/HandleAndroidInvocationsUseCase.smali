.class public final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;
.super Ljava/lang/Object;
.source "HandleAndroidInvocationsUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0001%BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014Jc\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u001c\u0010 \u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010\u00010!H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
        "",
        "getAndroidAdPlayerContext",
        "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;",
        "getOperativeEventApi",
        "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;",
        "refresh",
        "Lcom/unity3d/ads/core/domain/Refresh;",
        "handleOpenUrl",
        "Lcom/unity3d/ads/core/domain/HandleOpenUrl;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "deviceInfoRepository",
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "campaignStateRepository",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "sendPrivacyUpdateRequest",
        "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/adplayer/Invocation;",
        "onInvocations",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "adData",
        "",
        "adDataRefreshToken",
        "impressionConfig",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "onSubscription",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;

.field public static final KEY_AD_DATA:Ljava/lang/String; = "adData"

.field public static final KEY_AD_DATA_REFRESH_TOKEN:Ljava/lang/String; = "adDataRefreshToken"

.field public static final KEY_IMPRESSION_CONFIG:Ljava/lang/String; = "impressionConfig"

.field public static final KEY_NATIVE_CONTEXT:Ljava/lang/String; = "nativeContext"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_TRACKING_TOKEN:Ljava/lang/String; = "trackingToken"


# instance fields
.field private final campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final getAndroidAdPlayerContext:Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;

.field private final getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

.field private final handleOpenUrl:Lcom/unity3d/ads/core/domain/HandleOpenUrl;

.field private final refresh:Lcom/unity3d/ads/core/domain/Refresh;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sendPrivacyUpdateRequest:Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->Companion:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1

    const-string v0, "getAndroidAdPlayerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getOperativeEventApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleOpenUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignStateRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPrivacyUpdateRequest"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->getAndroidAdPlayerContext:Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;

    .line 29
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 30
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->refresh:Lcom/unity3d/ads/core/domain/Refresh;

    .line 31
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->handleOpenUrl:Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    .line 32
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 33
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 34
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    .line 35
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sendPrivacyUpdateRequest:Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    .line 36
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-void
.end method

.method public static final synthetic access$getCampaignStateRepository$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    return-object p0
.end method

.method public static final synthetic access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    return-object p0
.end method

.method public static final synthetic access$getGetAndroidAdPlayerContext$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->getAndroidAdPlayerContext:Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;

    return-object p0
.end method

.method public static final synthetic access$getGetOperativeEventApi$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    return-object p0
.end method

.method public static final synthetic access$getHandleOpenUrl$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/HandleOpenUrl;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->handleOpenUrl:Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    return-object p0
.end method

.method public static final synthetic access$getRefresh$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/Refresh;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->refresh:Lcom/unity3d/ads/core/domain/Refresh;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method public static final synthetic access$getSendPrivacyUpdateRequest$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sendPrivacyUpdateRequest:Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method


# virtual methods
.method public final invoke(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    const-string v0, "onInvocations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDataRefreshToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSubscription"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$1;

    const/4 v1, 0x0

    invoke-direct {v0, p6, v1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onSubscription(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v1, p2

    move-object v3, p3

    move-object v2, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
