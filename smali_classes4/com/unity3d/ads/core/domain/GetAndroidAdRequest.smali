.class public final Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;
.super Ljava/lang/Object;
.source "GetAndroidAdRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetAdRequest;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetAndroidAdRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetAndroidAdRequest.kt\ncom/unity3d/ads/core/domain/GetAndroidAdRequest\n+ 2 AdRequestKt.kt\ngateway/v1/AdRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngateway/v1/UniversalRequestKt\n*L\n1#1,40:1\n8#2:41\n1#3:42\n1#3:44\n434#4:43\n*S KotlinDebug\n*F\n+ 1 GetAndroidAdRequest.kt\ncom/unity3d/ads/core/domain/GetAndroidAdRequest\n*L\n21#1:41\n21#1:42\n33#1:44\n33#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;",
        "Lcom/unity3d/ads/core/domain/GetAdRequest;",
        "getUniversalRequestForPayLoad",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "deviceInfoRepository",
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "campaignStateRepository",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V",
        "invoke",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "placement",
        "",
        "impressionOpportunity",
        "Lcom/google/protobuf/ByteString;",
        "(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V
    .locals 1

    const-string v0, "getUniversalRequestForPayLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignStateRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 17
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 18
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    const-string v3, "newBuilder()"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lgateway/v1/AdRequestKt$Dsl;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lgateway/v1/AdRequestKt$Dsl;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lgateway/v1/AdRequestKt$Dsl;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lgateway/v1/AdRequestKt$Dsl;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lgateway/v1/AdRequestKt$Dsl;

    iget-object v8, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcom/google/protobuf/ByteString;

    iget-object v9, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, p3

    move-object p3, v11

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    sget-object p3, Lgateway/v1/AdRequestKt$Dsl;->Companion:Lgateway/v1/AdRequestKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->newBuilder()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lgateway/v1/AdRequestKt$Dsl$Companion;->_create(Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;)Lgateway/v1/AdRequestKt$Dsl;

    move-result-object p3

    .line 22
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionCounters()Lgateway/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v2

    invoke-virtual {p3, v2}, Lgateway/v1/AdRequestKt$Dsl;->setSessionCounters(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V

    .line 23
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    iput-object p0, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$4:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$5:Ljava/lang/Object;

    iput v6, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v10, p0

    move-object v9, p1

    move-object v8, p2

    move-object p1, p3

    move-object p2, p1

    :goto_1
    check-cast v2, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-virtual {p1, v2}, Lgateway/v1/AdRequestKt$Dsl;->setStaticDeviceInfo(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 24
    iget-object p1, v10, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgateway/v1/AdRequestKt$Dsl;->setDynamicDeviceInfo(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 25
    invoke-virtual {p2, v8}, Lgateway/v1/AdRequestKt$Dsl;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    .line 26
    invoke-virtual {p2, v9}, Lgateway/v1/AdRequestKt$Dsl;->setPlacementId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, v6}, Lgateway/v1/AdRequestKt$Dsl;->setRequestImpressionConfiguration(Z)V

    .line 28
    iget-object p1, v10, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    iput-object v10, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;->getCampaignState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, v2

    move-object v2, v10

    :goto_2
    check-cast p3, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {p1, p3}, Lgateway/v1/AdRequestKt$Dsl;->setCampaignState(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V

    .line 41
    invoke-virtual {p2}, Lgateway/v1/AdRequestKt$Dsl;->_build()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object p1

    .line 33
    sget-object p2, Lgateway/v1/UniversalRequestKt;->INSTANCE:Lgateway/v1/UniversalRequestKt;

    .line 43
    sget-object p2, Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;

    move-result-object p2

    .line 34
    invoke-virtual {p2, p1}, Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;->setAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    .line 43
    invoke-virtual {p2}, Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object p1

    .line 36
    iget-object p2, v2, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest$invoke$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p1
.end method
