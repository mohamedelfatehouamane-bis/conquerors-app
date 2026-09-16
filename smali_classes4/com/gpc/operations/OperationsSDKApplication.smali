.class public Lcom/gpc/operations/OperationsSDKApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/OperationsSDKApplication$GPCSDK_SYNCHRONIZE;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final LOGCAT_PROPERTY:Ljava/lang/String; = "log.tag.opssdk.logcat"

.field private static final TAG:Ljava/lang/String; = "OPSSDKApplication"

.field private static appCount:I

.field public static sApplication:Landroid/app/Application;


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

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/OperationsSDKApplication;->appCount:I

    return v0
.end method

.method public static synthetic access$008()I
    .locals 2

    .line 1
    sget v0, Lcom/gpc/operations/OperationsSDKApplication;->appCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/gpc/operations/OperationsSDKApplication;->appCount:I

    return v0
.end method

.method public static synthetic access$010()I
    .locals 2

    .line 1
    sget v0, Lcom/gpc/operations/OperationsSDKApplication;->appCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/gpc/operations/OperationsSDKApplication;->appCount:I

    return v0
.end method

.method private static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    const-string v0, "OPSSDKApplication"

    const-string v1, "Exception"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "getprop "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_0

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_0
    :goto_1
    throw p0

    :catch_3
    nop

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 19
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v1
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/operations/OperationsSDKApplication;->DEBUG:Z

    return v0
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 2

    .line 1
    sput-object p0, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 2
    const-string v0, "OPSSDKApplication"

    const-string v1, "onApplicationCreate"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/gpc/operations/OperationsSDKApplication$a;

    invoke-direct {v0}, Lcom/gpc/operations/OperationsSDKApplication$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 45
    invoke-static {}, Lcom/gpc/operations/OperationsSDKApplication;->readFlag()V

    .line 46
    invoke-static {}, Lcom/gpc/operations/OperationsSDKApplication;->registerBroadcastReceiver()V

    .line 47
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    .line 48
    invoke-static {}, Lcom/gpc/operations/utils/OPSToastUtils;->sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gpc/operations/utils/OPSToastUtils;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static readFlag()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "log.tag.opssdk.logcat"

    invoke-static {v0}, Lcom/gpc/operations/OperationsSDKApplication;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/gpc/operations/OperationsSDKApplication;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/gpc/operations/OperationsSDKApplication;->DEBUG:Z

    .line 6
    invoke-static {v0}, Lcom/gpc/operations/utils/LogUtils;->setDebugModel(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static registerBroadcastReceiver()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    const-string v1, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    new-instance v2, Lcom/gpc/operations/OperationsSDKApplication$GPCSDK_SYNCHRONIZE;

    invoke-direct {v2}, Lcom/gpc/operations/OperationsSDKApplication$GPCSDK_SYNCHRONIZE;-><init>()V

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    new-instance v2, Lcom/gpc/operations/OperationsSDKApplication$GPCSDK_SYNCHRONIZE;

    invoke-direct {v2}, Lcom/gpc/operations/OperationsSDKApplication$GPCSDK_SYNCHRONIZE;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static sync(JJLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "OPSSDKApplication"

    const-string v1, "sync"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/operations/helper/GPCSyncConfigration;

    invoke-direct {v0}, Lcom/gpc/operations/helper/GPCSyncConfigration;-><init>()V

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->setServerTimestamp(J)V

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/gpc/operations/helper/GPCSyncConfigration;->setUnderDeviceStandbyTime(J)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/gpc/operations/helper/GPCSyncConfigration;->setMetaConfig(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/RunningTimeConfiguration;->syncConfigration(Lcom/gpc/operations/helper/GPCSyncConfigration;)V

    return-void
.end method
