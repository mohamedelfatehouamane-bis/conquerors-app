.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HandleAndroidInvocationsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->invoke(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/unity3d/ads/adplayer/Invocation;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/unity3d/ads/adplayer/Invocation;"
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
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {
        0x2f,
        0x38,
        0x39,
        0x3a,
        0x3b,
        0x3c,
        0x3d,
        0x45,
        0x4d,
        0x56,
        0x5c,
        0x66,
        0x6c,
        0x77,
        0x81,
        0x8c,
        0x90,
        0x94,
        0x98,
        0x9c,
        0xa0,
        0xaa,
        0xae,
        0xb2,
        0xc7,
        0xd0,
        0xd9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adData:Ljava/lang/String;

.field final synthetic $adDataRefreshToken:Ljava/lang/String;

.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $impressionConfig:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/unity3d/ads/adplayer/Invocation;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invoke(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/Invocation;

    .line 46
    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/Invocation;->getLocation()Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 217
    :pswitch_2
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$27;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$27;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x1b

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 208
    :pswitch_3
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$26;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$26;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x1a

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 199
    :pswitch_4
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$25;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$25;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x19

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 178
    :pswitch_5
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x18

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 174
    :pswitch_6
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$23;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, v3, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$23;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x17

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 170
    :pswitch_7
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$22;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$22;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x16

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 160
    :pswitch_8
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x15

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 156
    :pswitch_9
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$20;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$20;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x14

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 152
    :pswitch_a
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$19;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$19;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x13

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 148
    :pswitch_b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$18;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$18;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x12

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 144
    :pswitch_c
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$17;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$17;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x11

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 140
    :pswitch_d
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$16;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$16;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x10

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 129
    :pswitch_e
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$15;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$15;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xf

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 119
    :pswitch_f
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$14;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$14;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xe

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 108
    :pswitch_10
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$13;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$13;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xd

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 102
    :pswitch_11
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$12;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$12;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xc

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 92
    :pswitch_12
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$11;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$11;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xb

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 86
    :pswitch_13
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$10;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$10;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0xa

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 77
    :pswitch_14
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$9;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$9;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x9

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 69
    :pswitch_15
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$8;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$8;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x8

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 61
    :pswitch_16
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, v3, p1, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x7

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 60
    :pswitch_17
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$6;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$6;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x6

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 59
    :pswitch_18
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$5;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$5;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x5

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 58
    :pswitch_19
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$4;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$4;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x4

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 57
    :pswitch_1a
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$3;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$3;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x3

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 56
    :pswitch_1b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$2;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$2;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :pswitch_1c
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    :goto_0
    return-object v0

    .line 231
    :cond_0
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
