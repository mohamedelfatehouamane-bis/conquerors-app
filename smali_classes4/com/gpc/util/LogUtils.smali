.class public Lcom/gpc/util/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODULE_APPCONF:Ljava/lang/String; = "AppConf"

.field private static context:Landroid/content/Context; = null

.field protected static sEnable:Z = true

.field protected static sIsLoadDefaultLogAdapters:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogAdapter(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->addLogAdapter(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;)V

    return-void
.end method

.method public static clearLogAdapters()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->clearLogAdapters()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "occurs Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "GPC"

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->ANCHOR:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->init(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/gpc/util/LogUtils;->setDebugMode(Z)V

    return-void
.end method

.method public static isDebugMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCSDKFundamental;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public static loadDefaultLogAdapters()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sIsLoadDefaultLogAdapters:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->loadDefaultLogAdapters()V

    .line 5
    new-instance v0, Lcom/gpc/util/log/adapter/GPCQALogAdapter;

    new-instance v1, Lcom/gpc/util/log/format/GPCQALogFormat;

    invoke-direct {v1}, Lcom/gpc/util/log/format/GPCQALogFormat;-><init>()V

    invoke-direct {v0, v1}, Lcom/gpc/util/log/adapter/GPCQALogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V

    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->addLogAdapter(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;)V

    return-void
.end method

.method public static logAccount(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "_ACCOUNT_"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "[%s] %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_Flow_"

    invoke-static {p1, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logHTTP(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "_HTTP_"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logPay(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "_PAY_"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->setDebugMode(Z)V

    return-void
.end method

.method public static setEnabel(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/util/LogUtils;->sEnable:Z

    return-void
.end method

.method public static setShadowIsLoadDefaultLogAdapters(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/util/LogUtils;->sIsLoadDefaultLogAdapters:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/gpc/util/LogUtils;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
