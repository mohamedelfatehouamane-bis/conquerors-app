.class public final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;
.super Ljava/lang/Object;
.source "AndroidGetCacheDirectoryUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetCacheDirectoryUseCase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetCacheDirectoryUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetCacheDirectoryUseCase.kt\ncom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0011\u0010\u0018\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J#\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0002\u0082\u0002\u000e\n\u000c\u0008\u0000\u0012\u0002\u0018\u0000\u001a\u0004\u0008\u0003\u0010\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;",
        "Lcom/unity3d/ads/core/domain/GetCacheDirectoryUseCase;",
        "context",
        "Landroid/content/Context;",
        "cacheDirName",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "cacheDirectory",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
        "isInitialized",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "createCacheDirectory",
        "Ljava/io/File;",
        "baseDir",
        "newDir",
        "createNoMediaFile",
        "",
        "path",
        "initialize",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invoke",
        "testCacheDirectory",
        "directory",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private final cacheDirName:Ljava/lang/String;

.field private final cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->Companion:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDirName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirName:Ljava/lang/String;

    .line 20
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lkotlinx/coroutines/CoroutineName;

    const-string p3, "AndroidGetCacheDirectoryUseCase"

    invoke-direct {p2, p3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 22
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static final synthetic access$createCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNoMediaFile(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->createNoMediaFile(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getCacheDirName$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$initialize(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isInitialized$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->testCacheDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private final createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_2

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Could not create cache directory"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Base directory is null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createNoMediaFile(Ljava/io/File;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    const-string p1, "Successfully created .nomedia file"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    const-string p1, "Using existing .nomedia file"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    const-string v0, "Failed to create .nomedia file"

    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private final initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final testCacheDirectory(Ljava/io/File;)Z
    .locals 7

    const-string v0, "Failed to delete test file "

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 80
    :try_start_0
    const-string v2, "test"

    .line 81
    new-instance v4, Ljava/io/File;

    const-string v5, "UnityAdsTest.txt"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 82
    invoke-static {v4, v2, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 84
    invoke-static {v4, v6, v3, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v0, "Read content mismatch"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    .line 89
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return v3

    :catch_0
    move-exception v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unity Ads exception while testing cache directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_2
    return v1
.end method


# virtual methods
.method public invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 24
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 29
    :goto_1
    iget-object p1, v2, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method
