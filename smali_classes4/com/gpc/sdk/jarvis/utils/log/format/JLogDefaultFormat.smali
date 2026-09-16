.class public final Lcom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat;
.super Ljava/lang/Object;
.source "JLogDefaultFormat.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJLogDefaultFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JLogDefaultFormat.kt\ncom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat\n*L\n1#1,40:1\n*E\n"
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
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat;",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat$DefaultImpls;->getStackTraceString(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toFormatMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;
    .locals 7

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    :cond_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 32
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getAnchor()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogLevel()Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->getLevelName()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    .line 35
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object p1, v5, v0

    const/4 p1, 0x4

    aput-object v1, v5, p1

    .line 29
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s [%s][%s][%s]:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
