.class public Lcom/gpc/sdk/jarvis/utils/JLogUtils;
.super Ljava/lang/Object;
.source "JLogUtils.java"


# static fields
.field public static ANCHOR:Ljava/lang/String; = "GPC"

.field private static context:Landroid/content/Context;

.field private static sIsDebugMode:Z

.field private static sLogBridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    .line 28
    new-instance v1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;

    new-instance v2, Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;

    invoke-direct {v2}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogcatFormat;-><init>()V

    invoke-direct {v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JUnconditionalLogcatAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sIsDebugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogAdapter(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearLogAdapters()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 55
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 60
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 63
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 64
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 91
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 92
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 68
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 69
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 73
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 74
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->context:Landroid/content/Context;

    .line 33
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    return-void
.end method

.method public static isDebugMode()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sIsDebugMode:Z

    return v0
.end method

.method public static loadDefaultLogAdapters()V
    .locals 3

    .line 37
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    new-instance v1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;

    sget-object v2, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    new-instance v1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;

    sget-object v2, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 3

    .line 97
    :try_start_0
    sget-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sLogBridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->clone()Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 115
    sput-boolean p0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->sIsDebugMode:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 50
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 51
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, p1, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 82
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 83
    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method
