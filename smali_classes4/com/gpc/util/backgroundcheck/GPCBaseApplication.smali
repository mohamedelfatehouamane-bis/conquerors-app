.class public Lcom/gpc/util/backgroundcheck/GPCBaseApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCBaseApplication"

.field private static appCount:I

.field private static sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    return v0
.end method

.method public static synthetic access$008()I
    .locals 2

    .line 1
    sget v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    return v0
.end method

.method public static synthetic access$010()I
    .locals 2

    .line 1
    sget v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    return v0
.end method

.method private static fix()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_1
    const-string v0, "com.gpc.util.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getAppCount()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    return v0
.end method

.method public static getBaseApplication()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->sApplication:Landroid/app/Application;

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->fix()V

    .line 7
    new-instance v0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication$a;

    invoke-direct {v0}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static setAppCount(I)V
    .locals 0

    .line 1
    sput p0, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->appCount:I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method
