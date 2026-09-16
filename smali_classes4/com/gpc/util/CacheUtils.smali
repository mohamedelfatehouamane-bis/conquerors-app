.class public final Lcom/gpc/util/CacheUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/CacheUtils$WriteCacheListener;,
        Lcom/gpc/util/CacheUtils$ClearCacheListener;,
        Lcom/gpc/util/CacheUtils$ReadCacheListener;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "CacheUtilsJGH3FL"

.field private static final TAG:Ljava/lang/String; = "CacheUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSpecifiedCacheAync(Ljava/lang/String;Lcom/gpc/util/CacheUtils$ClearCacheListener;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/gpc/util/SDKTask;

    invoke-direct {v1}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 3
    new-instance v2, Lcom/gpc/util/CacheUtils$c;

    invoke-direct {v2, p0}, Lcom/gpc/util/CacheUtils$c;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/gpc/util/CacheUtils$d;

    invoke-direct {p0, v0, p1}, Lcom/gpc/util/CacheUtils$d;-><init>(Landroid/os/Handler;Lcom/gpc/util/CacheUtils$ClearCacheListener;)V

    invoke-virtual {v1, v2, p0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public static readCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gpc/util/FileHelper;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    const-string v0, "CacheUtilsJGH3FL"

    const-string v1, "8705030532450895"

    invoke-static {v1}, Lcom/gpc/util/ObscureUtils;->getV(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/gpc/util/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    const-string v0, "CacheUtils"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static readCacheAync(Ljava/lang/String;Lcom/gpc/util/CacheUtils$ReadCacheListener;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/gpc/util/SDKTask;

    invoke-direct {v1}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 3
    new-instance v2, Lcom/gpc/util/CacheUtils$e;

    invoke-direct {v2, p0}, Lcom/gpc/util/CacheUtils$e;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/gpc/util/CacheUtils$f;

    invoke-direct {p0, v0, p1}, Lcom/gpc/util/CacheUtils$f;-><init>(Landroid/os/Handler;Lcom/gpc/util/CacheUtils$ReadCacheListener;)V

    invoke-virtual {v1, v2, p0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public static writeCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/gpc/util/FileHelper;->createFileIfNotExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    const-string v0, "CacheUtilsJGH3FL"

    invoke-static {v0}, Lcom/gpc/util/ObscureUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    const-string v2, "8705030532450895"

    invoke-static {v2}, Lcom/gpc/util/ObscureUtils;->getV(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/gpc/util/AESUtils;->encrypt(Ljava/lang/String;Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/gpc/util/FileHelper;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    const-string p1, "CacheUtils"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method

.method public static writeCacheAync(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/util/CacheUtils$WriteCacheListener;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/gpc/util/SDKTask;

    invoke-direct {v1}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 3
    new-instance v2, Lcom/gpc/util/CacheUtils$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/util/CacheUtils$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/gpc/util/CacheUtils$b;

    invoke-direct {p0, v0, p2}, Lcom/gpc/util/CacheUtils$b;-><init>(Landroid/os/Handler;Lcom/gpc/util/CacheUtils$WriteCacheListener;)V

    invoke-virtual {v1, v2, p0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method
