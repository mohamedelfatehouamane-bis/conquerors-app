.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HandleAndroidInvocationsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$7"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {
        0x3e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $it:Lcom/unity3d/ads/adplayer/Invocation;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->access$getGetOperativeEventApi$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    move-result-object p1

    .line 64
    sget-object v1, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;->OPERATIVE_EVENT_TYPE_SPECIFIED_BY_AD_PLAYER:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;

    .line 65
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    invoke-virtual {v3}, Lcom/unity3d/ads/adplayer/Invocation;->getParameters()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "decode(it.parameters[0] as String, Base64.NO_WRAP)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 65
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 62
    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;->label:I

    invoke-virtual {p1, v1, v4, v3, v5}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 67
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
