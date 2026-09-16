.class final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidGetCacheDirectoryUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$initialize$2"
    f = "AndroidGetCacheDirectoryUseCase.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 32
    iget v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$isInitialized$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    const-string p1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirName$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$createCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    const-string v1, "Creating external cache directory failed"

    invoke-static {v1, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v1, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$createNoMediaFile(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads is using external cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/data/model/CacheDirectory;

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheDirectoryType;->EXTERNAL:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/data/model/CacheDirectory;-><init>(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 47
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 51
    :cond_0
    const-string p1, "External media not mounted"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v1, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads is using internal cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/data/model/CacheDirectory;

    const-string v2, "internalCache"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheDirectoryType;->INTERNAL:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/data/model/CacheDirectory;-><init>(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 60
    :cond_1
    const-string p1, "Unity Ads failed to initialize cache directory"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
