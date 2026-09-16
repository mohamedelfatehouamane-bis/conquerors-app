.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;
.super Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.source "JLogbackAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;",
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;",
        "context",
        "Landroid/content/Context;",
        "logStorageDir",
        "",
        "filter",
        "Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getLogStorageDir",
        "()Ljava/lang/String;",
        "logger",
        "Lch/qos/logback/classic/Logger;",
        "logAfterFilter",
        "",
        "logEntity",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final logStorageDir:Ljava/lang/String;

.field private logger:Lch/qos/logback/classic/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logStorageDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, v0, p3, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logStorageDir:Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lch/qos/logback/classic/LoggerContext;

    .line 34
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->stop()V

    .line 37
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    .line 43
    :cond_0
    new-instance p3, Lch/qos/logback/core/rolling/RollingFileAppender;

    invoke-direct {p3}, Lch/qos/logback/core/rolling/RollingFileAppender;-><init>()V

    .line 44
    invoke-virtual {p3, v1}, Lch/qos/logback/core/rolling/RollingFileAppender;->setAppend(Z)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/log.0.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setFile(Ljava/lang/String;)V

    .line 46
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/Context;

    invoke-virtual {p3, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 48
    new-instance v0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;

    invoke-direct {v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;-><init>()V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/log.%i.zip"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->setFileNamePattern(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->setMinIndex(I)V

    const/4 p2, 0x2

    .line 51
    invoke-virtual {v0, p2}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->setMaxIndex(I)V

    .line 52
    move-object p2, p3

    check-cast p2, Lch/qos/logback/core/FileAppender;

    invoke-virtual {v0, p2}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->setParent(Lch/qos/logback/core/FileAppender;)V

    .line 53
    move-object p2, p1

    check-cast p2, Lch/qos/logback/core/Context;

    invoke-virtual {v0, p2}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->setContext(Lch/qos/logback/core/Context;)V

    .line 54
    invoke-virtual {v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->start()V

    .line 55
    check-cast v0, Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-virtual {p3, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setRollingPolicy(Lch/qos/logback/core/rolling/RollingPolicy;)V

    .line 57
    new-instance p2, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {p2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 58
    const-string v0, "%msg%n"

    invoke-virtual {p2, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 59
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/Context;

    invoke-virtual {p2, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 60
    invoke-virtual {p2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 61
    check-cast p2, Lch/qos/logback/core/encoder/Encoder;

    invoke-virtual {p3, p2}, Lch/qos/logback/core/rolling/RollingFileAppender;->setEncoder(Lch/qos/logback/core/encoder/Encoder;)V

    .line 66
    new-instance p2, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;

    invoke-direct {p2}, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;-><init>()V

    .line 67
    new-instance v0, Lch/qos/logback/core/util/FileSize;

    const-wide/32 v1, 0x200000

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    invoke-virtual {p2, v0}, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V

    .line 68
    check-cast p1, Lch/qos/logback/core/Context;

    invoke-virtual {p2, p1}, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->setContext(Lch/qos/logback/core/Context;)V

    .line 69
    invoke-virtual {p2}, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->start()V

    .line 70
    check-cast p2, Lch/qos/logback/core/rolling/TriggeringPolicy;

    invoke-virtual {p3, p2}, Lch/qos/logback/core/rolling/RollingFileAppender;->setTriggeringPolicy(Lch/qos/logback/core/rolling/TriggeringPolicy;)V

    .line 72
    invoke-virtual {p3}, Lch/qos/logback/core/rolling/RollingFileAppender;->start()V

    .line 73
    const-string p1, "ROOT"

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lch/qos/logback/classic/Logger;

    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz p1, :cond_1

    .line 74
    sget-object p2, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    invoke-virtual {p1, p2}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz p1, :cond_4

    check-cast p3, Lch/qos/logback/core/Appender;

    invoke-virtual {p1, p3}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    return-void

    .line 73
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ch.qos.logback.classic.Logger"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ch.qos.logback.classic.LoggerContext"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLogStorageDir()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logStorageDir:Ljava/lang/String;

    return-object v0
.end method

.method public logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->BASIC:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogLevel()Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->IMPORTANT:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogLevel()Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->CRUCIAL:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogLevel()Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->logger:Lch/qos/logback/classic/Logger;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
