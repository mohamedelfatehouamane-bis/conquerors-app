.class public final Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;
.super Ljava/lang/Object;
.source "JLogcatFormat.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJLogcatFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JLogcatFormat.kt\ncom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat\n*L\n1#1,32:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;",
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "()V",
        "toFormatMessage",
        "",
        "entity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat$DefaultImpls;->getStackTraceString(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toFormatMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;
    .locals 5

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    :cond_0
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 26
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getThreadName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    .line 28
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object v0, v3, p1

    .line 24
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[%s][%s]:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
