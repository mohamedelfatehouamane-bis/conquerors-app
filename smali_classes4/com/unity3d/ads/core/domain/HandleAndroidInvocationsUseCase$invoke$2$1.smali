.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"
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
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$1"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {
        0x34
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adData:Ljava/lang/String;

.field final synthetic $adDataRefreshToken:Ljava/lang/String;

.field final synthetic $impressionConfig:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adData:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$impressionConfig:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adDataRefreshToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adData:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$impressionConfig:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adData:Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$impressionConfig:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v5

    .line 49
    const-string v6, "adData"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string p1, "impressionConfig"

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p1, "adDataRefreshToken"

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v4}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->access$getGetAndroidAdPlayerContext$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;

    move-result-object p1

    iput-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$0:Ljava/lang/Object;

    const-string v1, "nativeContext"

    iput-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;->label:I

    invoke-virtual {p1, p0}, Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v5

    move-object v2, v0

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v2}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
