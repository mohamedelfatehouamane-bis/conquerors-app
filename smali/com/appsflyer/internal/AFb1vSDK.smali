.class public final Lcom/appsflyer/internal/AFb1vSDK;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;,
        Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field public static final AFInAppEventParameterName:Ljava/lang/String;

.field static final AFInAppEventType:Ljava/lang/String;

.field public static final AFKeystoreWrapper:Ljava/lang/String;

.field private static afErrorLog:I = 0x1

.field private static afRDLog:I

.field private static afWarnLog:J

.field private static d:Lcom/appsflyer/internal/AFb1vSDK;

.field static valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# instance fields
.field private AFLogger:J

.field private afInfoLog:Z

.field private afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

.field private e:J

.field private final force:Lcom/appsflyer/internal/AFd1kSDK;

.field private i:Landroid/app/Application;

.field private registerClient:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unregisterClient:J

.field private v:Z

.field public volatile values:Lcom/appsflyer/AppsFlyerConversionListener;

.field private w:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$04oXzrxOIhxsUhHMwMJB2HxmSb0(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4l4yWPSE2iOgkbmxs42frCH08_o(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9c0fP8sLWG0b1Sx5J_S5Mt1LJY0(Lcom/appsflyer/internal/AFb1vSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$NtPPpwJZouY2wTBaC7yW8SHOLak(Lcom/appsflyer/internal/AFb1vSDK;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kP58ojjyuOkQCzNtDQX7a-0QtOQ(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFf1lSDK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1lSDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xsh2m86WnRQ-zb1FjNMfDO7QABc(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1nSDK;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper()V

    .line 108
    const-string v0, "281"

    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    .line 111
    const-string v0, "6.13"

    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/androidevent?buildnumber=6.13.0&app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v0, 0x0

    .line 137
    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 142
    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/AFb1vSDK;->d:Lcom/appsflyer/internal/AFb1vSDK;

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public constructor <init>()V
    .locals 3

    .line 204
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    const-wide/16 v0, -0x1

    .line 143
    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    .line 144
    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    .line 145
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->v:Z

    .line 205
    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    .line 206
    new-instance v1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    .line 207
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFg1gSDK;->valueOf()V

    .line 208
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventType()V

    .line 211
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;B)V

    .line 3145
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1xSDK;Z)I
    .locals 3

    const/4 v0, 0x2

    .line 1800
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v0, "appsFlyerInAppEventCount"

    if-nez v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;)Landroid/app/Application;
    .locals 4

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v1, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static declared-synchronized AFInAppEventParameterName(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 6

    const-class v0, Lcom/appsflyer/internal/AFb1vSDK;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1786
    :try_start_0
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v1

    .line 1777
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 1786
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 1778
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1780
    :try_start_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "appsflyer-data"

    const/4 v5, 0x1

    .line 1781
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v3, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1778
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1780
    :try_start_3
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "appsflyer-data"

    const/4 v5, 0x0

    .line 1781
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v3, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1783
    :goto_1
    :try_start_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1784
    throw p0

    .line 1786
    :cond_1
    :goto_2
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;

    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public static AFInAppEventParameterName()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 973
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "AppUserId"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1vSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_1
    invoke-static {v2}, Lcom/appsflyer/internal/AFb1vSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    throw v3
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 35129
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 34013
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1zSDK;->values:Ljava/lang/String;

    .line 34119
    iput-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType:Ljava/lang/String;

    .line 35014
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1zSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 35129
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/lang/String;

    .line 1147
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    return-void
.end method

.method private static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 495
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1nSDK;->afRDLog()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventParameterName()V

    if-eqz v1, :cond_1

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x33

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private AFInAppEventParameterName(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1408
    rem-int v1, v0, v0

    .line 1385
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectAndroidIdForceByUser"

    const/4 v3, 0x0

    .line 1386
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1408
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1387
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectIMEIForceByUser"

    .line 1388
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1408
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "advertiserId"

    if-eqz v1, :cond_1

    .line 1391
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x58

    div-int/2addr v2, v3

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1394
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v1

    .line 49018
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    .line 1394
    invoke-static {v1}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 1408
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1395
    :try_start_1
    const-string v0, "android_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1397
    const-string v0, "validateGaidAndIMEI :: removing: android_id"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1400
    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 49082
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    .line 1400
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1401
    const-string v0, "imei"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1403
    const-string p1, "validateGaidAndIMEI :: removing: imei"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 1408
    const-string v0, "failed to remove IMEI or AndroidID key from params; "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    .line 561
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I
    .locals 3

    const/4 v0, 0x2

    .line 1796
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v1, "appsFlyerCount"

    invoke-static {p0, v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return p0
.end method

.method private AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 1683
    rem-int v1, v0, v0

    if-nez p1, :cond_0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    const/4 p1, 0x0

    return-object p1

    .line 1682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1683
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_1

    const/16 p2, 0x39

    div-int/lit8 p2, p2, 0x0

    :cond_1
    return-object p1
.end method

.method public static AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1761
    rem-int v1, v0, v0

    .line 1756
    const-string v1, "CACHED_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1761
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 1760
    :cond_1
    invoke-interface {p0, v1, p1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "readServerResponse error"

    const/4 v1, 0x2

    .line 1930
    rem-int v2, v1, v1

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1888
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 1930
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 1890
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v6, 0x1d

    div-int/2addr v6, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1893
    :cond_1
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1894
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1898
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    .line 1890
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x47

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v1

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    .line 1899
    :try_start_4
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    .line 1908
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1890
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v1

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v3

    .line 1903
    :goto_3
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read connection response from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1903
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v3, :cond_4

    .line 1908
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    .line 1914
    :goto_5
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1917
    :cond_5
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1919
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1922
    const-string v1, "error while parsing readServerResponse"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1923
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1925
    :try_start_9
    const-string v1, "string_response"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1926
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 1928
    const-string v0, "RESPONSE_NOT_JSON error"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1930
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception p0

    if-eqz v3, :cond_6

    .line 1908
    :try_start_a
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    goto :goto_7

    :catchall_5
    move-exception v1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_9

    .line 1914
    :goto_8
    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1916
    :cond_7
    :goto_9
    throw p0
.end method

.method public static AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1497
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1492
    const-string v1, "meta"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    .line 1493
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 1495
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    return-object v2
.end method

.method private synthetic AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x2

    .line 50167
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 299
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 50167
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0x7

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v5, v0

    const-string v6, "android.intent.action.VIEW"

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x61

    div-int/2addr v6, v3

    if-eqz v5, :cond_1

    goto :goto_0

    .line 50174
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50175
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 50167
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v6, v6, 0x35

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v0

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    .line 50162
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 50167
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v3, v3, 0xb

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v3, v0

    const/4 v3, 0x1

    .line 50163
    :cond_2
    const-string v5, "ddl_sent"

    invoke-interface {v2, v5}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 50165
    const-string p1, "No direct deep link"

    invoke-virtual {v1, p1, v4}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 50167
    :cond_3
    iget-object v2, v1, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    .line 50168
    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFc1oSDK;->values(Lcom/appsflyer/internal/AFc1kSDK;)Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    .line 50167
    invoke-virtual {v1, v2, p2, p1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFc1oSDK;Landroid/content/Intent;Landroid/content/Context;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1105
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1103
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1104
    invoke-virtual {p3, p2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 1105
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 6

    const/4 v0, 0x2

    .line 1253
    rem-int v1, v0, v0

    .line 38106
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1253
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v4, v1, 0x65

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1227
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eq v1, v3, :cond_2

    .line 1228
    const-string p1, "CustomerUserId not set, reporting is disabled"

    invoke-static {p1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_2
    if-eqz v4, :cond_6

    .line 1235
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v4, "launchProtectEnabled"

    .line 1236
    invoke-virtual {v1, v4, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1253
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1238
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39097
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_3

    const/16 v1, 0xa

    .line 1241
    const-string v2, "Event timeout. Check \'minTimeBetweenSessions\' param"

    invoke-interface {p1, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1253
    :cond_3
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    .line 1246
    :cond_4
    const-string v0, "Allowing multiple launches within a 5 second time window."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1248
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    .line 1251
    :cond_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1252
    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;

    invoke-direct {v1, p0, p1, v2}, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;B)V

    const-wide/16 v2, 0x0

    .line 1253
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private AFInAppEventType(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1291
    rem-int v1, v0, v0

    .line 1284
    new-instance v1, Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1xSDK;-><init>()V

    .line 1285
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v2

    .line 40164
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v2

    .line 1285
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v1

    .line 41110
    iput-object p1, v1, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1291
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    .line 1288
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 1290
    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;

    invoke-direct {v2, p0, v1, v4}, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;B)V

    const-wide/16 v3, 0x5

    .line 1291
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v2, v3, v4, v1}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 549
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1xSDK;)I
    .locals 3

    const/4 v0, 0x2

    .line 1529
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v0, 0x1

    const-string v2, "appsFlyerAdImpressionCount"

    invoke-static {p0, v2, v0}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1627
    rem-int v1, v0, v0

    const/16 v1, 0x3f

    .line 1623
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1627
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, p0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method static AFKeystoreWrapper()V
    .locals 2

    const-wide v0, -0x1d41b50e0fc5e777L    # -4.4657701580218215E167

    sput-wide v0, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    return-void
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    .line 968
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const v2, 0x8000

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 953
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 952
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 953
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 954
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "appsflyer_backup_rules"

    const-string v3, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 956
    const-string p0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    .line 957
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v2, v3, p0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    return-void

    .line 959
    :cond_2
    :try_start_1
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    invoke-virtual {p0, v0, v2, v1}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 967
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "checkBackupRules Exception"

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 968
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "checkBackupRules Exception: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->v(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method private AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 4

    const/4 v0, 0x2

    .line 1057
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1054
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v1

    .line 1056
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1oSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1fSDK;

    move-result-object p1

    .line 28110
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFg1bSDK;->values()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    .line 28111
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v3, "api_name"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28112
    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1fSDK;)V

    .line 1057
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    :cond_0
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName()V

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 3

    const/4 v0, 0x2

    .line 1172
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1169
    throw p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1vSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->e()V

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-void
.end method

.method private synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1lSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 196
    rem-int v1, v0, v0

    .line 188
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 186
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    .line 187
    sget-object v2, Lcom/appsflyer/internal/AFf1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

    if-ne p1, v2, :cond_1

    .line 196
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 188
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1iSDK;->AFKeystoreWrapper()V

    const/16 p1, 0x57

    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1iSDK;->AFKeystoreWrapper()V

    .line 192
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType()Z

    move-result p1

    if-nez p1, :cond_2

    .line 194
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->values()V

    .line 196
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void

    :cond_2
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->valueOf()V

    return-void
.end method

.method private synthetic AFKeystoreWrapper(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 808
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventParameterName()V

    return-void

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFKeystoreWrapper()V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method private static AFLogger(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    .line 1486
    rem-int v1, v0, v0

    .line 1473
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1474
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1475
    const-string v1, "android.permission.INTERNET"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 1478
    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 1486
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    if-nez v1, :cond_1

    .line 1479
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {p0, v0, v2}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 1486
    throw p0

    .line 1481
    :cond_2
    :goto_0
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    const-string v1, "com.google.android.gms.permission.AD_ID"

    .line 1482
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1483
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    invoke-virtual {p0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1486
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    .line 1479
    :cond_3
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_4

    const/16 p0, 0x10

    div-int/lit8 p0, p0, 0x0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 1486
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Exception while validation permissions. "

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFLogger()Z
    .locals 12

    const/4 v0, 0x2

    .line 1280
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1257
    iget-wide v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1259
    iget-wide v3, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    sub-long/2addr v1, v3

    .line 40020
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v3, v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1261
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v4

    .line 1262
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v3

    .line 1264
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    const/4 v9, 0x3

    cmp-long v10, v1, v7

    if-gez v10, :cond_0

    .line 1280
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x5f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v0

    .line 1264
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1266
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v10, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object v3, v8, v6

    aput-object v1, v8, v0

    aput-object v2, v8, v9

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v6

    .line 1270
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1280
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x6d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v0

    .line 1272
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v4, v2, v5

    aput-object v3, v2, v6

    aput-object v1, v2, v0

    const-string v1, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v7, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    goto :goto_0

    .line 1280
    :cond_2
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1277
    const-string v1, "Sending first launch for this session!"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1280
    :cond_3
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v5

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 50194
    rem-int v1, v0, v0

    if-eqz p0, :cond_1

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->$10:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    .line 50194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    const/4 p0, 0x0

    throw p0

    .line 0
    :cond_1
    :goto_0
    check-cast p0, [C

    .line 50178
    new-instance v1, Lcom/appsflyer/internal/AFj1oSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1oSDK;-><init>()V

    .line 50181
    sget-wide v2, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    const-wide v4, 0x77c785fa92797c12L    # 9.708796586141944E268

    xor-long/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Lcom/appsflyer/internal/AFj1oSDK;->values(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 50186
    iput p1, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    :goto_1
    iget v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 50194
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->$11:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->$10:I

    rem-int/2addr v2, v0

    .line 50188
    iget v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    sub-int/2addr v2, p1

    iput v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    .line 50189
    iget v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    iget v3, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    aget-char v3, p0, v3

    iget v6, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    rem-int/2addr v6, p1

    aget-char v6, p0, v6

    xor-int/2addr v3, v6

    int-to-long v6, v3

    iget v3, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    int-to-long v8, v3

    sget-wide v10, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    xor-long/2addr v10, v4

    mul-long v8, v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    int-to-char v3, v3

    aput-char v3, p0, v2

    .line 50186
    iget v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    goto :goto_1

    .line 50194
    :cond_2
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    return-void
.end method

.method private synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1445
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method private synthetic d()V
    .locals 3

    const/4 v0, 0x2

    .line 813
    rem-int v1, v0, v0

    new-instance v1, Lcom/appsflyer/internal/AFh1wSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1wSDK;-><init>()V

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    return-void
.end method

.method private e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;
    .locals 4

    const/4 v0, 0x2

    .line 1119
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v1, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1115
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1116
    new-instance v0, Lcom/appsflyer/internal/AFh1zSDK;

    check-cast p1, Landroid/app/Activity;

    .line 1117
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFh1zSDK;-><init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFh1aSDK;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x2f

    .line 1119
    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    throw v3

    .line 1115
    :cond_2
    instance-of p1, p1, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x2

    .line 50102
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1728
    invoke-static {}, Lcom/appsflyer/internal/AFf1vSDK;->unregisterClient()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50102
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    throw v2

    .line 1732
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 1733
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFf1vSDK;

    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFf1vSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 50102
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v3, v1, v2}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1728
    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFf1vSDK;->unregisterClient()Z

    throw v2
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 1722
    rem-int v1, v0, v0

    .line 1714
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1716
    const-string v2, "pid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 1722
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1717
    :try_start_1
    const-string v1, "preInstallName"

    invoke-static {v1, p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1722
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0

    .line 1719
    :cond_1
    :try_start_2
    const-string p0, "Cannot set preinstall attribution data without a media source"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1722
    const-string v0, "Error parsing JSON for preinstall"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized registerClient()Lcom/appsflyer/internal/AFf1iSDK;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 200
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v1, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x37

    .line 200
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 185
    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

    .line 184
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 200
    :cond_0
    rem-int/2addr v0, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 184
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 200
    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private unregisterClient()[Lcom/appsflyer/internal/AFi1nSDK;
    .locals 3

    const/4 v0, 0x2

    .line 1975
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object v0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    const/4 v0, 0x0

    throw v0
.end method

.method private static valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x2

    .line 1814
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1807
    invoke-interface {p0, p1, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 1811
    invoke-interface {p0, p1, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;I)V

    .line 1809
    :cond_2
    :goto_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFb1vSDK;J)J
    .locals 3

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    iput-wide p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    if-nez v1, :cond_0

    return-wide p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf()Lcom/appsflyer/internal/AFb1vSDK;
    .locals 3

    const/4 v0, 0x2

    .line 215
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK;->d:Lcom/appsflyer/internal/AFb1vSDK;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private valueOf(Ljava/util/Map;)Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1633
    rem-int v1, v0, v0

    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK$3;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFb1vSDK$3;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-object v1
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    .line 1619
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1590
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    return-object v1

    .line 1588
    :cond_0
    const-string v2, "fb\\d*?://authorize.*"

    .line 1589
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1605
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    const-string v3, "access_token"

    if-nez v2, :cond_2

    .line 1590
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x27

    div-int/lit8 v4, v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1591
    :goto_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1592
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 1595
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1597
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 1599
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1601
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1603
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1619
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x41

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_8

    .line 1604
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1605
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1606
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1608
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 1619
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v8, v8, 0x51

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v8, v0

    .line 1609
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1610
    :cond_6
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1611
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x51

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v8, v0

    .line 1613
    :cond_7
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1604
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1605
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1

    .line 1616
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    :goto_4
    return-object p0
.end method

.method public static valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 1198
    rem-int v1, v0, v0

    .line 1197
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1198
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-object p0
.end method

.method private valueOf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1217
    rem-int v1, v0, v0

    .line 1212
    new-instance v1, Lcom/appsflyer/internal/AFh1sSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1sSDK;-><init>()V

    .line 1216
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36101
    iput-object p1, v1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 37064
    iput-object p1, v1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 37110
    iput-object p2, v1, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 37119
    iput-object p1, v1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType:Ljava/lang/String;

    .line 1217
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x61

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static valueOf(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x2

    .line 553
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFb1vSDK;Z)Z
    .locals 4

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/16 v3, 0x29

    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->v:Z

    if-nez v1, :cond_0

    div-int/lit8 p0, v3, 0x0

    :cond_0
    add-int/2addr v2, v3

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    return p1
.end method

.method private static values(Lcom/appsflyer/internal/AFd1xSDK;)I
    .locals 4

    const/4 v0, 0x2

    .line 1525
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const-string v3, "appsFlyerAdRevenueCount"

    invoke-static {p0, v3, v2}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    return p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFb1vSDK;)Lcom/appsflyer/internal/AFf1iSDK;
    .locals 3

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static values(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    .line 1521
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1503
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1506
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1521
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v4, v4, 0x1b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v4, v0

    const-string v5, "af"

    if-nez v4, :cond_0

    .line 1508
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2a

    .line 1509
    div-int/lit8 v4, v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1510
    :goto_0
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v7, "Push Notification received af payload = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p0, v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 1517
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 557
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1123
    rem-int v1, v0, v0

    new-instance v1, Lcom/appsflyer/internal/AFh1uSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1uSDK;-><init>()V

    .line 31101
    iput-object p2, v1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 32064
    iput-object p3, v1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1124
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x41

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-void
.end method

.method private values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 12

    const/4 v0, 0x2

    .line 1371
    rem-int v1, v0, v0

    .line 1296
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 42025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1299
    const-string p1, "sendWithEvent - got null context. skipping event/launch."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v2

    .line 42065
    iget-object v2, v2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1304
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 1310
    :cond_1
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    .line 1311
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 1312
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1313
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendWithEvent from activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1316
    :cond_2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v1

    .line 1317
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;

    move-result-object v3

    .line 42097
    iget-object v4, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 1320
    const-string v5, "appsflyerKey"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 1321
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_5

    .line 1328
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1329
    const-string v4, "AppsFlyerLib.sendWithEvent"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    .line 1332
    invoke-static {v2, v4}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result v2

    .line 1334
    new-instance v5, Lcom/appsflyer/internal/AFi1cSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 1335
    const-string v6, ""

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42137
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v6

    .line 42138
    instance-of v7, p1, Lcom/appsflyer/internal/AFg1aSDK;

    .line 42139
    instance-of v8, p1, Lcom/appsflyer/internal/AFg1cSDK;

    .line 42140
    instance-of v9, p1, Lcom/appsflyer/internal/AFh1xSDK;

    .line 42141
    instance-of v10, p1, Lcom/appsflyer/internal/AFh1wSDK;

    const/4 v11, 0x1

    if-nez v10, :cond_b

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_6

    .line 42245
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_8

    .line 1371
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/2addr v6, v11

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_7

    .line 43242
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x5c

    div-int/2addr v8, v4

    goto :goto_1

    :cond_7
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_a

    .line 44231
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 45164
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v8, "appsFlyerCount"

    invoke-interface {v6, v8, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v6

    if-ge v6, v0, :cond_9

    .line 43242
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v6, v6, 0x27

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v6, v0

    .line 45248
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFLogger:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 45251
    :cond_9
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->e:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 45254
    :cond_a
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->registerClient:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 42239
    :cond_b
    :goto_0
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46220
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 47168
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 48025
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 47084
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 46220
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42151
    invoke-static {v6, v7}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 42152
    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1336
    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Ljava/util/Map;)V

    .line 1338
    new-instance v6, Lcom/appsflyer/internal/AFc1tSDK;

    .line 1339
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v7

    .line 1340
    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1341
    invoke-virtual {p1, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1342
    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1343
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1eSDK;->valueOf()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v6, v7, p1, v2}, Lcom/appsflyer/internal/AFc1tSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFa1pSDK;Ljava/util/Map;)V

    if-eqz v1, :cond_f

    .line 43242
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    .line 1351
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v4, v1, :cond_d

    .line 43242
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x4b

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v3, v0

    .line 1351
    aget-object v3, p1, v4

    .line 48052
    iget-object v5, v3, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 1352
    sget-object v7, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    if-ne v5, v7, :cond_c

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48056
    iget-object v3, v3, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " referrer, wait ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1360
    :cond_d
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1eSDK;->AFInAppEventType()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1362
    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    move v4, v2

    .line 1364
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 v4, 0x1

    .line 1369
    :cond_f
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    if-eq v4, v11, :cond_10

    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_10
    const-wide/16 v0, 0x1f4

    .line 1371
    :goto_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v6, v0, v1, v2}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 1322
    :cond_11
    :goto_5
    const-string p1, "Not sending data yet, waiting for dev key"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-eqz v4, :cond_12

    const/16 p1, 0x29

    .line 1324
    const-string v1, "No dev key"

    invoke-interface {v4, p1, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1371
    :cond_12
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    .line 1305
    :cond_13
    :goto_6
    const-string p1, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1306
    const-string p1, "AppsFlyer will not track this event."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private static values(Lorg/json/JSONObject;)V
    .locals 15

    const/4 v0, 0x2

    .line 439
    rem-int v1, v0, v0

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 391
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 397
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x11

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v3, v0

    .line 398
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 399
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 403
    const-string v4, "error at timeStampArr"

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 412
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_2
    move-object v5, v3

    .line 413
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 417
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x6f

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v8, v0

    const/4 v8, 0x0

    .line 420
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 422
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    .line 439
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v9, v9, 0x5b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v9, v0

    .line 423
    :try_start_4
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    cmp-long v14, v9, v12

    if-eqz v14, :cond_2

    .line 439
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v9, v9, 0x67

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v9, v0

    if-nez v9, :cond_4

    .line 424
    :try_start_5
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v11

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-nez v5, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    cmp-long v5, v9, v11

    if-nez v5, :cond_5

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    goto :goto_4

    :catch_1
    move-exception v6

    .line 433
    const-string v7, "error at manageExtraReferrers"

    invoke-static {v7, v6}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 439
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public static values(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x2

    .line 1673
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1656
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/16 v4, 0x3b

    div-int/2addr v4, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_0
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p0, v0

    return v2

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1662
    const-string v1, "WARNING:  Google play services is unavailable. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1666
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 1669
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "WARNING:  Google Play Services is unavailable. "

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;
    .locals 3

    const/4 v0, 0x2

    .line 166
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    if-nez v1, :cond_0

    const/16 v1, 0x60

    div-int/lit8 v1, v1, 0x0

    :cond_0
    return-object v0
.end method

.method public final AFInAppEventType(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 3019
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    if-eqz p1, :cond_0

    .line 2124
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    if-eqz p1, :cond_0

    .line 3019
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 2123
    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 1143
    rem-int v1, v0, v0

    .line 1137
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 1129
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    .line 1131
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 33065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 1133
    const-string p2, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 33097
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_1

    .line 1143
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p2, v0

    const-string v0, "No dev key"

    if-eqz p2, :cond_0

    const/16 p2, 0x74

    .line 1137
    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x29

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 1142
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1143
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x79

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p2, v0

    const-string p2, ""

    .line 33110
    :cond_3
    iput-object p2, p1, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 1143
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    return-void

    .line 1129
    :cond_4
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    .line 1131
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p1

    .line 33065
    iget-object p1, p1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method final AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1467
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1419
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 50025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 1420
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    .line 1421
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object v3

    .line 1422
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v4

    .line 1423
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v5

    .line 1424
    iget-object v6, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 1425
    invoke-static {v1, v6}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1aSDK;

    .line 1426
    sget-object v7, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 1427
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1428
    invoke-static {v6}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "ad_ids_disabled"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 1431
    invoke-static {v9, v9, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, "\u5484\ue195\u54e5\u3897\u051a\u8568\uf1fe\u28bf\uc681\u16ff\u6350\uc554\u7028\u6887\ud6f4\u57c3"

    invoke-static {v13, v10, v12}, Lcom/appsflyer/internal/AFb1vSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v10, v12, v9

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1435
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "******* sendTrackingWithEvent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v5, v11, :cond_1

    .line 50026
    iget-object v8, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    goto :goto_0

    .line 1435
    :cond_1
    const-string v8, "Launch"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x33

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    :goto_1
    rem-int/2addr v7, v0

    goto :goto_2

    .line 1437
    :cond_2
    :try_start_1
    const-string v7, "Reporting has been stopped"

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    goto :goto_1

    .line 1439
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger(Landroid/content/Context;)V

    .line 1441
    invoke-interface {v3, p1}, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 1444
    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v1}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;)V

    .line 1442
    invoke-interface {v3, v6, v7, v8}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper(Ljava/util/Map;ZLkotlin/jvm/functions/Function0;)V

    if-eqz v5, :cond_3

    .line 1450
    invoke-interface {v3, v6}, Lcom/appsflyer/internal/AFg1qSDK;->valueOf(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 50027
    iput-object v1, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 1454
    :cond_3
    invoke-interface {v3, v6}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    .line 1456
    invoke-static {v2, v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result v1

    .line 50028
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    if-eqz p1, :cond_4

    const/4 v9, 0x1

    :cond_4
    invoke-static {v2, v9}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_5

    if-ne v1, v11, :cond_5

    .line 1467
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    .line 1460
    :try_start_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 50029
    iput-boolean v11, v0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType:Z

    .line 1463
    :cond_5
    invoke-interface {v3, v6, v1, p1}, Lcom/appsflyer/internal/AFg1qSDK;->valueOf(Ljava/util/Map;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v6

    :catchall_0
    move-exception p1

    .line 1465
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v11}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v6
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 311
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 308
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    .line 310
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    return-void

    .line 311
    :cond_0
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    const/16 p1, 0xe

    div-int/lit8 p1, p1, 0x0

    :cond_1
    return-void
.end method

.method public final anonymizeUser(Z)V
    .locals 7

    const/4 v0, 0x2

    .line 1156
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "deviceTrackingDisabled"

    const-string v3, "anonymizeUser"

    if-eqz v1, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1156
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 267
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 265
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    .line 266
    iput-object p1, v1, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    .line 267
    iput-object p2, v1, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 827
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/AFc1eSDK;->valueOf(Z)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x5d

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-void
.end method

.method public final enableTCFDataCollection(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 510
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v2, "enableTCFDataCollection"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 50156
    rem-int v1, v0, v0

    .line 1820
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "getAppsFlyerUID"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 50156
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x5e

    .line 1823
    div-int/2addr p1, v3

    :cond_0
    return-object v0

    .line 1825
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1826
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    .line 50156
    iget-object v1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1771
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 1768
    :try_start_0
    new-instance v2, Lcom/appsflyer/internal/AFb1jSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/appsflyer/internal/AFb1jSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1jSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1

    :catchall_0
    move-exception p1

    .line 1770
    const-string v0, "Could not collect facebook attribution id. "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1959
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1964
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 614
    rem-int v1, v0, v0

    .line 603
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "api_store_value"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-object v1

    .line 608
    :cond_0
    const-string v1, "AF_STORE"

    invoke-direct {p0, p1, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 614
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_1

    return-object p1

    .line 610
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1

    .line 613
    :cond_2
    const-string p1, "No out-of-store value set"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v1
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 505
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const/4 v0, 0x0

    const-string v2, "getSdkVersion"

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    .line 504
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    :goto_0
    invoke-static {}, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    .line 504
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 10

    const/4 v0, 0x2

    .line 822
    rem-int v1, v0, v0

    .line 782
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 785
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    .line 788
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 20069
    iput-object p1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 789
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    .line 791
    invoke-virtual {p0, p3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 792
    invoke-static {p3}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 822
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v3, v0

    .line 794
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    .line 798
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afRDLog()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFb1rSDK;->values()V

    .line 799
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object p3

    .line 20072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/appsflyer/internal/AFg1bSDK;->valueOf:J

    .line 802
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFh1gSDK;

    move-result-object p3

    .line 21011
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_0

    new-instance v3, Lcom/appsflyer/internal/AFh1bSDK;

    iget-object v4, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/AFh1bSDK;-><init>(Landroid/content/Context;)V

    check-cast v3, Lcom/appsflyer/internal/AFh1cSDK;

    goto :goto_0

    .line 21013
    :cond_0
    new-instance v3, Lcom/appsflyer/internal/AFi1zSDK;

    iget-object v4, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/AFi1zSDK;-><init>(Landroid/content/Context;)V

    check-cast v3, Lcom/appsflyer/internal/AFh1cSDK;

    .line 21010
    :goto_0
    iput-object v3, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1cSDK;

    .line 804
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p3

    new-instance v3, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda3;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    invoke-interface {p3, v3}, Lcom/appsflyer/internal/AFd1iSDK;->valueOf(Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;)V

    .line 811
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p3

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 813
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object p3

    new-instance v3, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda4;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    .line 21109
    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Ljava/lang/Runnable;)Lcom/appsflyer/internal/AFi1pSDK;

    move-result-object v4

    .line 21110
    invoke-virtual {p3, v4, v3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    .line 21112
    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21113
    new-instance v4, Lcom/appsflyer/internal/AFi1lSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/appsflyer/internal/AFi1lSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21114
    new-instance v4, Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v4, v3, v5}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21115
    new-instance v4, Lcom/appsflyer/internal/AFi1oSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v4, v3, v5}, Lcom/appsflyer/internal/AFi1oSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21116
    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFi1kSDK;->values(Ljava/lang/Runnable;)V

    .line 21123
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName()Z

    move-result v4

    if-nez v4, :cond_5

    .line 21124
    iget-object v4, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v4

    .line 22025
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 21124
    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 22060
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.appsflyer.referrer.INSTALL_PROVIDER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22062
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 22063
    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 822
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v6, v6, 0x51

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_4

    .line 22064
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 22067
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22068
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 22069
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_2

    .line 22071
    new-instance v8, Lcom/appsflyer/internal/AFi1mSDK;

    invoke-direct {v8, v7, v3, v5}, Lcom/appsflyer/internal/AFi1mSDK;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 22072
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22074
    :cond_2
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component"

    invoke-virtual {v7, v8, v9}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    goto :goto_1

    .line 22078
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 22079
    iget-object v3, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22080
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Detected "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " valid preinstall provider(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    goto :goto_2

    .line 822
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 21127
    :cond_5
    :goto_2
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    .line 822
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v6, v0

    .line 21127
    aget-object v6, v3, v5

    .line 21128
    iget-object v7, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v7}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v7

    .line 23025
    iget-object v7, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 21128
    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/AFi1nSDK;->values(Landroid/content/Context;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 815
    :cond_6
    iget-object p3, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFd1kSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v3

    .line 23193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    .line 23194
    iget-object v4, p3, Lcom/appsflyer/internal/AFg1zSDK;->values:Lcom/appsflyer/internal/AFf1bSDK;

    .line 23221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24098
    iget-object v6, v3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v6, v3}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v3

    .line 23221
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24226
    iget-wide v6, p3, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    .line 23221
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25050
    invoke-static {v3}, Lcom/appsflyer/internal/AFb1mSDK;->valueOf(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 25068
    array-length v5, v3

    if-lez v5, :cond_8

    .line 822
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v5, v0

    .line 25071
    array-length v5, v3

    const/16 v6, 0x8

    if-le v5, v6, :cond_7

    .line 25072
    invoke-static {v3, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 25076
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 25077
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25079
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25080
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    goto :goto_4

    :cond_8
    const-wide/16 v5, -0x1

    .line 23194
    :goto_4
    iget-object v3, p3, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 26025
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 23194
    new-instance v7, Lcom/appsflyer/internal/AFg1zSDK$5;

    invoke-direct {v7, p3}, Lcom/appsflyer/internal/AFg1zSDK$5;-><init>(Lcom/appsflyer/internal/AFg1zSDK;)V

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/appsflyer/internal/AFf1bSDK;->AFKeystoreWrapper(JLandroid/content/Context;Lcom/appsflyer/internal/AFf1bSDK$AFa1uSDK;)Z

    move-result v3

    iput-boolean v3, p3, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName:Z

    goto :goto_5

    :cond_9
    return-object p0

    .line 817
    :cond_a
    sget-object p3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "context is null, Google Install Referrer will be not initialized"

    invoke-virtual {p3, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 822
    sget p3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p3, p3, 0x29

    rem-int/lit16 v3, p3, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p3, v0

    .line 819
    :goto_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    if-nez p2, :cond_b

    const-string v3, "null"

    goto :goto_6

    :cond_b
    const-string v3, "conversionDataListener"

    :goto_6
    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "init"

    invoke-interface {p3, v3, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 820
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "6.13.0"

    aput-object v3, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/appsflyer/internal/AFg1mSDK;->force(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 821
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    :cond_c
    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x2

    .line 1752
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 1741
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1746
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    .line 1752
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    :catch_0
    move-exception p1

    .line 1750
    const-string v2, "Could not check if app is pre installed"

    invoke-static {v2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1752
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final isStopped()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 1872
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf()Z

    move-result v1

    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/16 v0, 0x59

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return v1
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1110
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    if-nez v1, :cond_0

    const/16 p1, 0x5c

    div-int/lit8 p1, p1, 0x0

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 29045
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    .line 1065
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1066
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1uSDK;-><init>()V

    .line 29101
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 30091
    iput-object p4, v0, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p3, :cond_2

    .line 1070
    const-string p4, "af_touch_obj"

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31025
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31026
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31027
    instance-of v3, v2, Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    .line 31028
    check-cast v2, Landroid/view/MotionEvent;

    .line 31029
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 31030
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "x"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31031
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "y"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31032
    const-string v4, "loc"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31033
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "pf"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31034
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rad"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31036
    :cond_1
    const-string v2, "error"

    const-string v3, "Parsing failed due to invalid input in \'af_touch_obj\'."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31037
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V

    .line 31039
    :goto_1
    const-string v2, "tch_data"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1072
    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 31064
    :cond_2
    iput-object p3, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1076
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    .line 31070
    new-instance p4, Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    :goto_2
    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1076
    filled-new-array {p2, p4}, [Ljava/lang/String;

    move-result-object p4

    const-string v1, "logEvent"

    invoke-interface {p3, v1, p4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 1079
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->values:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 1081
    :cond_4
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .locals 4

    const/4 v0, 0x2

    .line 1024
    rem-int v1, v0, v0

    .line 1020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "logLocation"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1021
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1022
    const-string v2, "af_long"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string p4, "af_lat"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string p2, "af_location_coordinates"

    invoke-direct {p0, p1, p2, v1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final logSession(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    .line 1034
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1030
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "logSession"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName()V

    .line 1033
    sget-object v1, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    const/4 v1, 0x0

    .line 1034
    invoke-direct {p0, p1, v1, v1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 2

    const/4 p1, 0x2

    .line 516
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1ySDK;->AFKeystoreWrapper()V

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 p1, 0x29

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-void
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 227
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v1, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 221
    const-string v2, "\""

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x41

    .line 227
    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Context is \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v1}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 221
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void

    .line 226
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFc1oSDK;->values(Lcom/appsflyer/internal/AFc1kSDK;)Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 227
    invoke-virtual {v0, p1, v1, p2}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V

    return-void

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Link is \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, p2, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    .line 298
    rem-int v1, v0, v0

    .line 284
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v1, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    if-nez p1, :cond_1

    add-int/lit8 v1, v1, 0x2f

    .line 298
    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string p1, "performOnDeepLinking was called with null intent"

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    const/4 p1, 0x4

    div-int/lit8 p1, p1, 0x0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    const-string p2, "performOnDeepLinking was called with null context"

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, p2, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 295
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 297
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 298
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 2

    const/4 p1, 0x2

    .line 1163
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, p1

    const-string p1, "registerConversionListener"

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1163
    :goto_0
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/AppsFlyerConversionListener;)V

    return-void

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 3

    const/4 p1, 0x2

    .line 1192
    rem-int v0, p1, p1

    .line 1184
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "registerValidatorListener"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1186
    const-string v0, "registerValidatorListener called"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1192
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x6d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p2, p1

    .line 1189
    const-string p1, "registerValidatorListener null listener"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 1192
    :cond_0
    sput-object p2, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p2, p1

    return-void
.end method

.method public final sendAdImpression(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1099
    rem-int v1, v0, v0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1xSDK;)I

    move-result v1

    .line 1096
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1097
    const-string v3, "ad_network"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string p2, "adimpression_counter"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    new-instance p2, Lcom/appsflyer/internal/AFg1cSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>()V

    invoke-direct {p0, p1, v2, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1090
    rem-int v1, v0, v0

    .line 1086
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFd1xSDK;)I

    move-result v1

    .line 1087
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1088
    const-string v3, "ad_network"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string p2, "adrevenue_counter"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance p2, Lcom/appsflyer/internal/AFg1aSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFg1aSDK;-><init>()V

    invoke-direct {p0, p1, v2, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final sendInAppPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 5089
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 259
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 260
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    .line 5059
    const-string v1, "purchases"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v1}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5062
    new-instance v1, Lcom/appsflyer/internal/AFf1rSDK;

    iget-object v2, p1, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v1, p2, p3, v2}, Lcom/appsflyer/internal/AFf1rSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 5063
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    .line 5089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final sendPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 4089
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v2, "subscriptions"

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const/4 v1, 0x0

    .line 4051
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, p3, v1}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    .line 4051
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v1}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4054
    :goto_0
    new-instance v1, Lcom/appsflyer/internal/AFf1xSDK;

    iget-object v2, p1, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v1, p2, p3, v2}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 4055
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    .line 4089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4051
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "c"

    const-string v2, "pid"

    const/4 v3, 0x2

    .line 704
    rem-int v4, v3, v3

    .line 651
    const-string v4, "sendPushNotificationData"

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 652
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "activity_intent_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity_intent_null"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v5

    const-string v6, "activity_null"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 658
    :goto_0
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v4

    .line 659
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 14014
    iput-object v5, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 15014
    iget-object v5, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 704
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_8

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 663
    iget-object v5, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    const-string v9, ")"

    if-nez v5, :cond_3

    .line 664
    const-string v0, "pushes: initializing pushes history.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    move-wide v12, v7

    :cond_2
    const/16 v16, 0x2

    goto/16 :goto_3

    .line 668
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v10, "pushPayloadMaxAging"

    const-wide/32 v11, 0x1b7740

    invoke-virtual {v5, v10, v11, v12}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 669
    iget-object v5, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v12, v7

    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 671
    new-instance v15, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, 0x2

    .line 16014
    :try_start_2
    iget-object v3, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 671
    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v5

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 674
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17014
    iput-object v0, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    return-void

    .line 683
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v5, v7, v5

    cmp-long v3, v5, v10

    if-lez v3, :cond_5

    .line 704
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v3, v3, 0x2

    .line 684
    :try_start_3
    iget-object v3, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v3, v5, v12

    if-gtz v3, :cond_6

    .line 704
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v3, v3, 0x2

    .line 689
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v5, v18

    const/4 v3, 0x2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/16 v16, 0x2

    goto :goto_2

    :catchall_2
    move-exception v0

    const/16 v16, 0x2

    move-wide v12, v7

    .line 693
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while handling push notification measurement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    :goto_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 699
    iget-object v2, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 701
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :cond_7
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18014
    iget-object v3, v4, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 703
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 663
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    const/16 v16, 0x2

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 661
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v17, 0x0

    .line 663
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    throw v17

    :cond_9
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 645
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "setAdditionalData"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 645
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 13018
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 544
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "setAndroidIdData"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v1

    .line 13018
    iput-object p1, v1, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    .line 997
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v2, "appid"

    const-string v3, "setAppId"

    if-nez v1, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 997
    :goto_0
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 637
    rem-int v1, v0, v0

    .line 630
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "setAppInviteOneLink"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 631
    const-string v1, "setAppInviteOneLink = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 632
    const-string v1, "oneLinkSlug"

    if-eqz p1, :cond_1

    .line 637
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 632
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 633
    :cond_1
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "onelinkDomain"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "onelinkVersion"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "onelinkScheme"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 637
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    :cond_2
    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectAndroidID(Z)V
    .locals 6

    const/4 v0, 0x2

    .line 749
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v2, "collectAndroidIdForceByUser"

    const-string v3, "collectAndroidId"

    const-string v4, "setCollectAndroidID"

    if-nez v1, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 748
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x5e

    div-int/lit8 p1, p1, 0x0

    :cond_1
    return-void
.end method

.method public final setCollectIMEI(Z)V
    .locals 8

    const/4 v0, 0x2

    .line 756
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "collectIMEIForceByUser"

    const-string v3, "collectIMEI"

    const-string v4, "setCollectIMEI"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v1, v4, v6}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 755
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    div-int/2addr p1, v5

    :cond_1
    return-void
.end method

.method public final setCollectOaid(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 763
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 762
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "setCollectOaid"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 763
    const-string v1, "collectOAID"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V
    .locals 3

    const/4 v0, 0x2

    .line 50160
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2025
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 50160
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/AppsFlyerConsent;

    return-void

    .line 2025
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 50160
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/AppsFlyerConsent;

    const/4 p1, 0x0

    throw p1
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 1015
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1014
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "setCurrencyCode"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "currencyCode"

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    .line 596
    rem-int v1, v0, v0

    if-eqz p2, :cond_4

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 577
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomerUserId set: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 581
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p1

    .line 582
    sget-object v1, Lcom/appsflyer/internal/AFh1ySDK;->valueOf:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p2, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 584
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 13065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 577
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    .line 596
    const-string p1, ""

    .line 590
    :cond_0
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 591
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 583
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 595
    :cond_2
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 596
    const-string p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :cond_4
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 982
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 978
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "setCustomerUserId"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 979
    const-string v1, "setCustomerUserId = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 980
    const-string v1, "AppUserId"

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string p1, "waitForCustomerId"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x59

    div-int/2addr p1, v1

    :cond_0
    return-void
.end method

.method public final setDebugLog(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 527
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    return-void
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 329
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 326
    const-string v1, "setDisableAdvertisingIdentifiers: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 329
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 327
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName:Ljava/lang/Boolean;

    .line 328
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserIdEnabled"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserId"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setDisableNetworkData(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 335
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v0, "disableCollectNetworkData"

    const-string v2, "setDisableNetworkData: "

    if-nez v1, :cond_0

    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 335
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    return-void

    .line 334
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 335
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1003
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v0, "sdkExtension"

    const-string v2, "setExtension"

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v3

    invoke-interface {v1, v2, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1003
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 1953
    rem-int v1, v0, v0

    .line 1949
    invoke-static {p2}, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1953
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_0

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    .line 1950
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1951
    :goto_0
    new-instance v0, Lcom/appsflyer/internal/AFe1gSDK;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFe1gSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1gSDK;)V

    return-void

    .line 1953
    :cond_1
    const-string p1, "hostname was empty or null - call for setHost is skipped"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 12060
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 532
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const-string v2, "setImeiData"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 12060
    iput-object p1, v1, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setIsUpdate(Z)V
    .locals 4

    const/4 v0, 0x2

    .line 1009
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v0, "IS_UPDATE"

    const-string v2, "setIsUpdate"

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1009
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 5

    const/4 v0, 0x2

    .line 1943
    rem-int v1, v0, v0

    .line 1937
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    sget-object v2, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v2}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1943
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x5

    div-int/lit8 v1, v1, 0x3

    :cond_1
    const/4 v1, 0x0

    .line 1938
    :goto_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "log"

    invoke-interface {v2, v4, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1939
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    .line 50158
    const-string v3, "logLevel"

    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    if-eqz v1, :cond_2

    .line 1943
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFLogger()V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    :goto_1
    rem-int/2addr p1, v0

    return-void

    :cond_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    .line 1941
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventType()V

    .line 1943
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    goto :goto_1
.end method

.method public final setMinTimeBetweenSessions(I)V
    .locals 4

    const/4 v0, 0x2

    .line 1969
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 539
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v0, "setOaidData"

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-interface {v1, v0, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    :goto_0
    sput-object p1, Lcom/appsflyer/internal/AFb1tSDK;->AFKeystoreWrapper:Ljava/lang/String;

    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 19306
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "setOneLinkCustomDomain %s"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 774
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    .line 19306
    iput-object p1, v1, Lcom/appsflyer/internal/AFc1jSDK;->unregisterClient:[Ljava/lang/String;

    goto :goto_1

    .line 774
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 19306
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 624
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    .line 619
    div-int/lit8 v1, v1, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 620
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v3, "api_store_value"

    invoke-virtual {v1, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "Store API set with value: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 619
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/2addr p1, v2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    .line 624
    :cond_1
    const-string p1, "Cannot set setOutOfStore with null"

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 8038
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_7

    .line 317
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v1

    .line 6016
    iget-object v2, v1, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFc1bSDK;-><init>()V

    .line 7016
    iput-object v2, v1, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    .line 8016
    :cond_0
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    if-eqz p1, :cond_6

    .line 6016
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    .line 8019
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_4

    .line 8023
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8029
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 8030
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_3

    .line 8032
    const-string p2, "Partner data 1000 characters limit exceeded"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 8033
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8034
    const-string v2, "limit exceeded: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8035
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8037
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1bSDK;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8038
    iget-object p2, v1, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8024
    :cond_4
    :goto_0
    iget-object p2, v1, Lcom/appsflyer/internal/AFc1bSDK;->values:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    .line 8038
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    .line 8025
    const-string p1, "Partner data is missing or `null`"

    goto :goto_1

    .line 8026
    :cond_5
    const-string p2, "Cleared partner data for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8024
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 8020
    :cond_6
    :goto_2
    const-string p1, "Partner ID is missing or `null`"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_7
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object p1

    .line 6016
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 28015
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 987
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v1

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28015
    iput-object p1, v1, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventParameterName:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setPluginInfo(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V
    .locals 3

    const/4 v0, 0x2

    .line 2020
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2019
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afWarnLog()Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/AFi1xSDK;->values(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 2019
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afWarnLog()Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFi1xSDK;->values(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    throw v2
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 1708
    rem-int v1, v0, v0

    .line 1688
    const-string v1, "setPreinstallAttribution API called"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 1689
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1691
    const-string v2, "pid"

    if-eqz p1, :cond_0

    .line 1692
    :try_start_0
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    .line 1695
    :try_start_1
    const-string p1, "c"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p3, :cond_2

    .line 1698
    const-string p1, "af_siteid"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1702
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1705
    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1708
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    const-string p2, "preInstallName"

    if-eqz p1, :cond_3

    .line 1706
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    div-int/lit8 p1, p1, 0x0

    return-void

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1708
    :cond_4
    const-string p1, "Cannot set preinstall attribution data without a media source"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 18311
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 768
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "setResolveDeepLinkURLs %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    .line 18315
    iget-object v2, v1, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 18311
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 237
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 243
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v1, "all"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    return-void
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 4017
    rem-int v1, v0, v0

    .line 248
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFc1aSDK;

    invoke-direct {v2, p1}, Lcom/appsflyer/internal/AFc1aSDK;-><init>([Ljava/lang/String;)V

    .line 4017
    iput-object v2, v1, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1aSDK;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    .line 742
    rem-int v1, v0, v0

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 719
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v2

    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "setUserEmails"

    invoke-interface {v2, v3, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "userEmailsCryptType"

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 722
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    array-length v3, p2

    .line 727
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v4, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 742
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v5, v0

    if-nez v5, :cond_0

    aget-object v5, p2, v6

    .line 727
    sget-object v7, Lcom/appsflyer/internal/AFb1vSDK$2;->values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x37

    div-int/2addr v8, v4

    if-eq v7, v0, :cond_1

    goto :goto_1

    .line 726
    :cond_0
    aget-object v5, p2, v6

    .line 727
    sget-object v7, Lcom/appsflyer/internal/AFb1vSDK$2;->values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v0, :cond_1

    .line 731
    :goto_1
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v5, "sha256_el_arr"

    goto :goto_2

    .line 735
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v5, "plain_el_arr"

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 740
    :cond_2
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 742
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 711
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const-string v2, "setUserEmails"

    if-nez v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 711
    sget-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final start(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 832
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw v1
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 837
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 10

    const/4 v0, 0x2

    .line 898
    rem-int v1, v0, v0

    .line 853
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_9

    .line 843
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1ySDK;->valueOf()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 846
    :cond_0
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    const/16 v2, 0x29

    const-string v3, "No dev key"

    if-nez v1, :cond_2

    .line 847
    const-string v1, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-eqz p3, :cond_7

    .line 898
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 853
    invoke-interface {p3, p1, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p3, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    return-void

    .line 858
    :cond_2
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 859
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v1

    .line 860
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1oSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1fSDK;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1fSDK;)V

    .line 862
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    .line 843
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v4, v4, 0x2f

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 863
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v4

    const/16 v6, 0x44

    .line 864
    div-int/2addr v6, v5

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 863
    :cond_4
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 865
    :goto_0
    iput-object v4, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    .line 870
    :cond_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v4

    const-string v6, "start"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 871
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    sget-object v7, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "6.13.0"

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aput-object v7, v8, v5

    const-string v5, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 874
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Build Number: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 876
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 843
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    .line 877
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 26069
    iput-object p2, v0, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 878
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_2

    .line 880
    :cond_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 27065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 880
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 881
    const-string p1, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 885
    invoke-interface {p3, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    .line 891
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 892
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->e()V

    .line 893
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    .line 895
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1eSDK;->AFKeystoreWrapper()V

    .line 898
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFd1kSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object p2

    new-instance v0, Lcom/appsflyer/internal/AFb1vSDK$5;

    invoke-direct {v0, p0, v1, p3}, Lcom/appsflyer/internal/AFb1vSDK$5;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    invoke-interface {p2, p1, v0}, Lcom/appsflyer/internal/AFd1ySDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;)V

    return-void

    .line 843
    :cond_9
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1ySDK;->valueOf()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public final stop(ZLandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 497
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 493
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    .line 494
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 9077
    iput-boolean p1, v1, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    .line 495
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda5;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/16 v1, 0x15

    .line 496
    div-int/lit8 v1, v1, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 493
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    .line 494
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 9077
    iput-boolean p1, v1, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    .line 495
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2}, Lcom/appsflyer/internal/AFb1vSDK$$ExternalSyntheticLambda5;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 497
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    const-string p2, "is_stop_tracking_used"

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 496
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    div-int/lit8 p1, v0, 0x4

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x3

    div-int/lit8 p1, p1, 0x0

    :cond_2
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .locals 4

    const/4 v0, 0x2

    .line 272
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .locals 3

    const/4 v0, 0x2

    .line 5298
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 277
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v1

    iput-object p1, v1, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 278
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    .line 5298
    iput-wide p2, p1, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final unregisterConversionListener()V
    .locals 4

    const/4 v0, 0x2

    .line 1178
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    .line 1177
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "unregisterConversionListener"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1178
    iput-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v0

    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 521
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 522
    new-instance v0, Lcom/appsflyer/internal/AFg1tSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFg1tSDK;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5

    .line 10064
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 10068
    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Firebase Refreshed Token = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 10069
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1tSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFg1uSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11015
    iget-object v1, p1, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    .line 10070
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10071
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_3

    .line 11019
    iget-wide v3, p1, Lcom/appsflyer/internal/AFg1uSDK;->valueOf:J

    sub-long v3, v1, v3

    .line 10072
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 10077
    :goto_1
    new-instance v3, Lcom/appsflyer/internal/AFg1uSDK;

    xor-int/lit8 v4, p1, 0x1

    invoke-direct {v3, p2, v1, v2, v4}, Lcom/appsflyer/internal/AFg1uSDK;-><init>(Ljava/lang/String;JZ)V

    .line 11132
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v2, "afUninstallToken"

    .line 12015
    iget-object v4, v3, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    .line 11132
    invoke-interface {v1, v2, v4}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 11133
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v2, "afUninstallToken_received_time"

    .line 12019
    iget-wide v4, v3, Lcom/appsflyer/internal/AFg1uSDK;->valueOf:J

    .line 11133
    invoke-interface {v1, v2, v4, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 11134
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "afUninstallToken_queued"

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFg1uSDK;->values()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    .line 10080
    invoke-static {p2}, Lcom/appsflyer/internal/AFg1tSDK;->valueOf(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 10065
    :cond_5
    :goto_2
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p2, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v0, "Firebase Token is either empty or null and was not registered."

    invoke-virtual {p1, p2, v0}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x2

    .line 1862
    rem-int v0, v6, v6

    .line 1833
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v7

    if-nez p7, :cond_1

    .line 1862
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 1840
    :cond_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v0

    move-object v0, p2

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v5

    move-object v8, v4

    .line 1833
    const-string v0, "validateAndTrackInAppPurchase"

    invoke-interface {v7, v0, v5}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1844
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Validate in app called with parameters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    .line 1862
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, v6

    if-eqz v8, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    .line 1853
    :cond_3
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/appsflyer/internal/AFa1cSDK;

    .line 1854
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1855
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p1

    .line 50157
    iget-object p1, p1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 1856
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v4

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p7

    move-object v7, v3

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/internal/AFa1cSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1862
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void

    .line 1849
    :cond_4
    :goto_1
    sget-object p1, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz p1, :cond_5

    .line 1850
    const-string p2, "Please provide purchase parameters"

    invoke-interface {p1, p2}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    .line 1862
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v6

    if-nez p1, :cond_5

    const/16 p1, 0x39

    div-int/lit8 p1, p1, 0x0

    :cond_5
    return-void
.end method

.method public final valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;
    .locals 3

    const/4 v0, 0x2

    .line 1792
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1791
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1792
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    const/16 v0, 0x5c

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object p1
.end method

.method public final values(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x2

    .line 360
    rem-int v1, v0, v0

    .line 340
    new-instance v1, Lcom/appsflyer/internal/AFi1jSDK;

    invoke-direct {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;-><init>(Landroid/content/Intent;)V

    .line 341
    const-string p2, "appsflyer_preinstall"

    invoke-virtual {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->e(Ljava/lang/String;)V

    .line 344
    :cond_0
    const-string p2, "****** onReceive called *******"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 348
    const-string p2, "referrer"

    invoke-virtual {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v2, "Play store referrer: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 360
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v0

    const-string v3, "AF_REFERRER"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    .line 8153
    invoke-virtual {p2, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    iput-object v1, p2, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 360
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p2, v0

    const-string v0, "onReceive: isLaunchCalled"

    if-nez p2, :cond_1

    .line 358
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 359
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 359
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    :cond_2
    return-void

    .line 352
    :cond_3
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    .line 8153
    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    iput-object v1, p1, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType()Z

    throw v4

    :cond_4
    return-void
.end method

.method public final values(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 9

    const/4 v0, 0x2

    .line 1579
    rem-int v1, v0, v0

    .line 1540
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1542
    const-string v1, "af_deeplink"

    invoke-virtual {p2, v1}, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    .line 1543
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1545
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v4

    .line 1546
    iget-object v5, v4, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1547
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1548
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1549
    iget-object v2, v4, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 1553
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appended_query_params"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50031
    iget-object v6, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50034
    iget-object v4, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v4, :cond_1

    iget-object v5, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    goto :goto_1

    .line 1579
    :cond_0
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v0

    .line 1549
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1550
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1551
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1557
    :cond_1
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50036
    iget-object v4, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50039
    iget-object v1, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    .line 50044
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    .line 1560
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1561
    const-string v2, "link"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 1563
    const-string v2, "original_link"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    :cond_3
    invoke-static {p1, v1, p3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 1570
    new-instance p1, Lcom/appsflyer/internal/AFf1mSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p1, p4, v2, p3}, Lcom/appsflyer/internal/AFf1mSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Ljava/util/UUID;Landroid/net/Uri;)V

    .line 1571
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1mSDK;->afInfoLog()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    .line 1579
    :cond_4
    sget p3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p3, p3, 0x35

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p3, v0

    const-string p4, "isBrandedDomain"

    if-eqz p3, :cond_7

    .line 1572
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50041
    iget-object v2, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50044
    iget-object p3, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz p3, :cond_5

    iget-object p2, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p3, p2}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    goto :goto_2

    .line 1579
    :cond_5
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p2, v0

    .line 1574
    :goto_2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1mSDK;->w()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1575
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/util/Map;)Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

    move-result-object p2

    .line 50046
    iput-object p2, p1, Lcom/appsflyer/internal/AFf1mSDK;->registerClient:Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

    .line 1577
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p2

    .line 50048
    iget-object p3, p2, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p4, p2, p1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1579
    :cond_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    return-void

    .line 1572
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50041
    iget-object p3, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50044
    iget-object p1, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 p1, 0x0

    throw p1
.end method

.method public final values(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-string v0, "extraReferrers"

    const/4 v1, 0x2

    .line 483
    rem-int v2, v1, v1

    .line 447
    const-string v2, "received a new (extra) referrer: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 453
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v4

    const/4 v5, 0x0

    .line 454
    invoke-interface {v4, v0, v5}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 456
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 457
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 459
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    .line 466
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v7, v7

    const-wide/16 v9, 0x5

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    .line 483
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v7, v7, 0xf

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v7, v1

    if-eqz v7, :cond_2

    .line 467
    :try_start_1
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5

    .line 471
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v2, v2

    const-wide/16 v7, 0x4

    cmp-long v5, v2, v7

    if-ltz v5, :cond_4

    .line 483
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v1

    .line 472
    :try_start_2
    invoke-static {v4}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lorg/json/JSONObject;)V

    .line 475
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 481
    const-string p2, "error at addReferrer"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final values()Z
    .locals 3

    const/4 v0, 0x2

    .line 565
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v1, "waitForCustomerId"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final waitForCustomerUserId(Z)V
    .locals 4

    const/4 v0, 0x2

    .line 571
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v1, v0

    const-string v0, "waitForCustomerId"

    const-string v3, "initAfterCustomerUserID: "

    if-nez v1, :cond_0

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 571
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    return-void

    .line 570
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
