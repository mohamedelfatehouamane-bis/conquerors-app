.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandleAndroidInvocationsUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleAndroidInvocationsUseCase.kt\ncom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 AllowedPiiKt.kt\ngateway/v1/AllowedPiiKtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n230#2,3:243\n233#2,2:249\n61#3:246\n1#4:247\n1#4:248\n*S KotlinDebug\n*F\n+ 1 HandleAndroidInvocationsUseCase.kt\ncom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21\n*L\n162#1:243,3\n162#1:249,2\n163#1:246\n163#1:247\n*E\n"
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
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$21"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/unity3d/ads/adplayer/Invocation;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v0, v1, v2, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 160
    iget v0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/Invocation;->getParameters()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Boolean>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 162
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAllowedPii()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 244
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 245
    move-object v2, v1

    check-cast v2, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    .line 246
    sget-object v3, Lgateway/v1/AllowedPiiKt$Dsl;->Companion:Lgateway/v1/AllowedPiiKt$Dsl$Companion;

    invoke-virtual {v2}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    const-string v4, "this.toBuilder()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v3, v2}, Lgateway/v1/AllowedPiiKt$Dsl$Companion;->_create(Lgateway/v1/AllowedPiiOuterClass$AllowedPii$Builder;)Lgateway/v1/AllowedPiiKt$Dsl;

    move-result-object v2

    .line 164
    const-string v3, "idfa"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21$1$1$2;

    invoke-direct {v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21$1$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/reflect/KMutableProperty0;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 165
    :cond_1
    const-string v3, "idfv"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21$1$1$4;

    invoke-direct {v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21$1$1$4;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/reflect/KMutableProperty0;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 246
    :cond_2
    invoke-virtual {v2}, Lgateway/v1/AllowedPiiKt$Dsl;->_build()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v2

    .line 249
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
