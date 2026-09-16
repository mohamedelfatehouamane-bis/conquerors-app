.class public final Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;
.super Ljava/lang/Object;
.source "AndroidCampaignStateRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCampaignStateRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCampaignStateRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository\n+ 2 CampaignStateKt.kt\ngateway/v1/CampaignStateKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 CampaignKt.kt\ngateway/v1/CampaignKtKt\n+ 6 CampaignStateKt.kt\ngateway/v1/CampaignStateKt$Dsl\n*L\n1#1,75:1\n8#2:76\n1#3:77\n1#3:80\n1855#4:78\n1856#4:85\n8#5:79\n167#6,2:81\n68#6,2:83\n*S KotlinDebug\n*F\n+ 1 AndroidCampaignStateRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository\n*L\n54#1:76\n54#1:77\n56#1:80\n55#1:78\n55#1:85\n56#1:79\n68#1:81,2\n70#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\t\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00110\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ!\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V",
        "campaignStates",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/google/protobuf/ByteString;",
        "Lcom/unity3d/ads/core/data/model/CampaignState;",
        "getCampaignState",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getState",
        "opportunityId",
        "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getStates",
        "",
        "Lkotlin/Pair;",
        "removeState",
        "",
        "setLoadTimestamp",
        "setShowTimestamp",
        "updateState",
        "campaignState",
        "(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final campaignStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;"
        }
    .end annotation
.end field

.field private final getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V
    .locals 1

    const-string v0, "getSharedDataTimestamps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getCampaignState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getStates(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 51
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 76
    sget-object v0, Lgateway/v1/CampaignStateKt$Dsl;->Companion:Lgateway/v1/CampaignStateKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->newBuilder()Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/CampaignStateKt$Dsl$Companion;->_create(Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgateway/v1/CampaignStateKt$Dsl;

    move-result-object v0

    .line 55
    check-cast p1, Ljava/lang/Iterable;

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 55
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/core/data/model/CampaignState;

    .line 79
    sget-object v4, Lgateway/v1/CampaignKt$Dsl;->Companion:Lgateway/v1/CampaignKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->newBuilder()Lgateway/v1/CampaignStateOuterClass$Campaign$Builder;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lgateway/v1/CampaignKt$Dsl$Companion;->_create(Lgateway/v1/CampaignStateOuterClass$Campaign$Builder;)Lgateway/v1/CampaignKt$Dsl;

    move-result-object v4

    .line 57
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgateway/v1/CampaignKt$Dsl;->setData(Lcom/google/protobuf/ByteString;)V

    .line 58
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getDataVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Lgateway/v1/CampaignKt$Dsl;->setDataVersion(I)V

    .line 59
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgateway/v1/CampaignKt$Dsl;->setPlacementId(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v3}, Lgateway/v1/CampaignKt$Dsl;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    .line 61
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v4, v3}, Lgateway/v1/CampaignKt$Dsl;->setLoadTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    .line 62
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v3}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v4, v3}, Lgateway/v1/CampaignKt$Dsl;->setShowTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    .line 79
    :cond_4
    invoke-virtual {v4}, Lgateway/v1/CampaignKt$Dsl;->_build()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v1

    invoke-virtual {v1}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v0}, Lgateway/v1/CampaignStateKt$Dsl;->getShownCampaigns()Lcom/google/protobuf/kotlin/DslList;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1, v3}, Lgateway/v1/CampaignStateKt$Dsl;->addShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {v0}, Lgateway/v1/CampaignStateKt$Dsl;->getLoadedCampaigns()Lcom/google/protobuf/kotlin/DslList;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v3}, Lgateway/v1/CampaignStateKt$Dsl;->addLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    goto :goto_2

    .line 76
    :cond_6
    invoke-virtual {v0}, Lgateway/v1/CampaignStateKt$Dsl;->_build()Lgateway/v1/CampaignStateOuterClass$CampaignState;

    move-result-object p1

    return-object p1
.end method

.method public getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStates(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setLoadTimestamp(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ByteString;

    iget-object v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iput-object p0, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p0

    .line 42
    :goto_1
    check-cast p2, Lcom/unity3d/ads/core/data/model/CampaignState;

    if-eqz p2, :cond_8

    .line 46
    iget-object v5, v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-interface {v5, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, p2

    move-object p2, v4

    move-object v4, v2

    move-object v2, p1

    .line 42
    :goto_2
    move-object v9, p2

    check-cast v9, Lgateway/v1/TimestampsOuterClass$Timestamps;

    const/16 v11, 0x17

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 47
    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-virtual {v4, v2, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    .line 49
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setShowTimestamp(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ByteString;

    iget-object v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iput-object p0, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p0

    .line 21
    :goto_1
    check-cast p2, Lcom/unity3d/ads/core/data/model/CampaignState;

    if-eqz p2, :cond_8

    .line 25
    iget-object v5, v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-interface {v5, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, p2

    move-object p2, v4

    move-object v4, v2

    move-object v2, p1

    .line 21
    :goto_2
    move-object v10, p2

    check-cast v10, Lgateway/v1/TimestampsOuterClass$Timestamps;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 26
    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-virtual {v4, v2, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    .line 28
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    iget-object p3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
