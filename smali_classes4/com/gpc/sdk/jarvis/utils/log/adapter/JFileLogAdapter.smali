.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;
.super Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.source "JFileLogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$WriteHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJFileLogAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JFileLogAdapter.kt\ncom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter\n*L\n1#1,115:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;",
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "enable",
        "",
        "handler",
        "Landroid/os/Handler;",
        "logAfterFilter",
        "",
        "logEntity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "WriteHandler",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private enable:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 23
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1;-><init>(Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;)V

    check-cast v1, Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->setFilter(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    .line 37
    const-string v1, "jarvis_log_open.txt"

    .line 38
    invoke-static {p1}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 39
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 46
    const-string v2, "jarvis_log_%s.txt"

    .line 47
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "GPC_FileLogger_Thread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v4, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$WriteHandler;

    .line 54
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v5, "ht.looper"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {v4, v2, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$WriteHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    check-cast v4, Landroid/os/Handler;

    iput-object v4, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->handler:Landroid/os/Handler;

    .line 57
    iput-boolean v3, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->enable:Z

    return-void

    .line 59
    :cond_0
    iput-boolean v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->enable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    iput-boolean v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->enable:Z

    :cond_1
    return-void
.end method

.method public static final synthetic access$getEnable$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->enable:Z

    return p0
.end method

.method public static final synthetic access$setEnable$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->enable:Z

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 3

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->handler:Landroid/os/Handler;

    const-string v1, "handler"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->handler:Landroid/os/Handler;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
