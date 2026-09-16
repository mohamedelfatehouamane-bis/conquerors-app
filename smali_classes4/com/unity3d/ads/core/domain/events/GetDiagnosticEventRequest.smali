.class public final Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;
.super Ljava/lang/Object;
.source "GetDiagnosticEventRequest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetDiagnosticEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n+ 2 DiagnosticEventKt.kt\ngateway/v1/DiagnosticEventKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n8#2:22\n1#3:23\n1#3:24\n*S KotlinDebug\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n*L\n12#1:22\n12#1:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JO\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;",
        "",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V",
        "invoke",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "eventName",
        "",
        "tags",
        "",
        "intTags",
        "",
        "value",
        "",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V
    .locals 1

    const-string v0, "getSharedDataTimestamps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Double;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    invoke-direct {v0, p0, p5}, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget v2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lgateway/v1/DiagnosticEventKt$Dsl;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$5:Ljava/lang/Object;

    check-cast p2, Lgateway/v1/DiagnosticEventKt$Dsl;

    iget-object p3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    check-cast p3, Lgateway/v1/DiagnosticEventKt$Dsl;

    iget-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Double;

    iget-object v1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v0, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p5

    move-object p5, p3

    move-object p3, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    sget-object p5, Lgateway/v1/DiagnosticEventKt$Dsl;->Companion:Lgateway/v1/DiagnosticEventKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;->newBuilder()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    move-result-object v2

    const-string v4, "newBuilder()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, v2}, Lgateway/v1/DiagnosticEventKt$Dsl$Companion;->_create(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)Lgateway/v1/DiagnosticEventKt$Dsl;

    move-result-object p5

    .line 13
    sget-object v2, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_CUSTOM:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    invoke-virtual {p5, v2}, Lgateway/v1/DiagnosticEventKt$Dsl;->setEventType(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    .line 14
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$5:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p2

    move-object p2, p5

    move-object v1, v0

    move-object v0, p1

    move-object p1, p2

    :goto_1
    check-cast v1, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {p1, v1}, Lgateway/v1/DiagnosticEventKt$Dsl;->setTimestamps(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    .line 15
    invoke-virtual {p2, v0}, Lgateway/v1/DiagnosticEventKt$Dsl;->setCustomEventType(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p2}, Lgateway/v1/DiagnosticEventKt$Dsl;->getStringTagsMap()Lcom/google/protobuf/kotlin/DslMap;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lgateway/v1/DiagnosticEventKt$Dsl;->putAllStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 17
    invoke-virtual {p2}, Lgateway/v1/DiagnosticEventKt$Dsl;->getIntTagsMap()Lcom/google/protobuf/kotlin/DslMap;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lgateway/v1/DiagnosticEventKt$Dsl;->putAllIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V

    :cond_5
    if-eqz p4, :cond_6

    .line 18
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lgateway/v1/DiagnosticEventKt$Dsl;->setTimeValue(D)V

    .line 22
    :cond_6
    invoke-virtual {p5}, Lgateway/v1/DiagnosticEventKt$Dsl;->_build()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    move-result-object p1

    return-object p1
.end method
