.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;
.super Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.source "JLogcatAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;",
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "logformat",
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V",
        "isSetSystemProperty",
        "",
        "logAfterFilter",
        "",
        "logEntity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "Companion",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$Companion;

.field public static final LOGCAT_PROPERTY:Ljava/lang/String; = "log.tag.gpcsdk.logcat"


# instance fields
.field private isSetSystemProperty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->Companion:Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;

    invoke-direct {v0}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;-><init>()V

    check-cast v0, Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;-><init>(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logformat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 17
    invoke-direct {p0, p2, v0, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    :try_start_0
    const-string p2, "log.tag.gpcsdk.logcat"

    .line 26
    invoke-static {p2}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-static {p1}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 31
    invoke-static {p2, p1, v2, v1, v0}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->isSetSystemProperty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_0
    :goto_0
    new-instance p1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1;-><init>(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;)V

    check-cast p1, Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->setFilter(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    return-void
.end method

.method public static final synthetic access$isSetSystemProperty$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->isSetSystemProperty:Z

    return p0
.end method

.method public static final synthetic access$setSetSystemProperty$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->isSetSystemProperty:Z

    return-void
.end method


# virtual methods
.method public logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogcatType()I

    move-result v0

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
