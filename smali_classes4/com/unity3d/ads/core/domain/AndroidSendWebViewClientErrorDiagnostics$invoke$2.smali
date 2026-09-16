.class final Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidSendWebViewClientErrorDiagnostics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;->invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidSendWebViewClientErrorDiagnostics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSendWebViewClientErrorDiagnostics.kt\ncom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n1855#2,2:29\n*S KotlinDebug\n*F\n+ 1 AndroidSendWebViewClientErrorDiagnostics.kt\ncom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2\n*L\n12#1:29,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics$invoke$2"
    f = "AndroidSendWebViewClientErrorDiagnostics.kt"
    i = {}
    l = {
        0x19
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/ads/adplayer/WebViewClientError;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity3d/ads/adplayer/WebViewClientError;",
            ">;",
            "Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;-><init>(Ljava/util/List;Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/WebViewClientError;

    .line 13
    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getUrl()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    const-string v4, "webview_url"

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x0

    :goto_2
    move-object v8, v4

    .line 21
    new-array v4, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getReason()Lcom/unity3d/ads/core/data/model/ErrorReason;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/core/data/model/ErrorReason;->getCode()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "reason"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 20
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    .line 23
    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getStatusCode()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "webview_error_code"

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getStatusCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v9, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_5
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v5

    iput-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->label:I

    const-string v6, "webview_error"

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v10, p0

    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 27
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
