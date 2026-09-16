.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;
.super Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.source "JUnconditionalLogcatAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;",
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;",
        "logformat",
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V",
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


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V
    .locals 2

    const-string v0, "logformat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    new-instance p1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter$1;

    invoke-direct {p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter$1;-><init>()V

    check-cast p1, Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;->setFilter(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    return-void
.end method


# virtual methods
.method public logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogcatType()I

    move-result v0

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
