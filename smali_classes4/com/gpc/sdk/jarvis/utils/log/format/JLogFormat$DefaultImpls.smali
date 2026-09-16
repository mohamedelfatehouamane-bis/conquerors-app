.class public final Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat$DefaultImpls;
.super Ljava/lang/Object;
.source "JLogFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static getStackTraceString(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 19
    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 27
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    return-object p0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 34
    new-instance v0, Ljava/io/PrintWriter;

    move-object v1, p0

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 37
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sw.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
