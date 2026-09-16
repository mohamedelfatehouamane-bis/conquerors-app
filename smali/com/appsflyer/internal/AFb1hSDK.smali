.class public final Lcom/appsflyer/internal/AFb1hSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFb1cSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static final AFInAppEventParameterName:I

.field private static afInfoLog:[B = null

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static force:[S = null

.field private static i:I = 0x0

.field private static v:I = 0x0

.field private static w:I = 0x1


# instance fields
.field private AFInAppEventType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final AFKeystoreWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private AFLogger:Z

.field private final registerClient:Lcom/appsflyer/internal/AFd1nSDK;

.field private unregisterClient:Z

.field private valueOf:Z

.field private values:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger()V

    const v0, 0x17f76

    .line 42
    sput v0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName:I

    sget v0, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 58
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->unregisterClient:Z

    .line 59
    iput v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    .line 60
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    .line 61
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method

.method private AFInAppEventParameterName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 184
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    .line 183
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/appsflyer/internal/AFb1hSDK;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFd1sSDK;)V

    .line 184
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->v()Ljava/util/Map;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p2, p2, 0x7d

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 340
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    if-nez p1, :cond_0

    .line 333
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 336
    aput-object p0, v1, v3

    .line 337
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_1

    .line 338
    aget-object p0, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 234
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 224
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v3, "sdk_version"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v1, "devkey"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 228
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz p4, :cond_2

    .line 234
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 231
    :try_start_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :try_start_4
    rem-int p1, v0, v0

    .line 225
    :cond_2
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p1, :cond_3

    .line 234
    monitor-exit p0

    return-void

    .line 225
    :cond_3
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 224
    :cond_4
    :try_start_7
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p3, "sdk_version"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method private static AFInAppEventType(F)Z
    .locals 8

    const/4 v0, 0x2

    .line 411
    rem-int v1, v0, v0

    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x1

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_0

    sget p0, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p0, v0

    return v5

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    cmpg-double v7, v1, v3

    if-gtz v7, :cond_1

    sget p0, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p0, v0

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    return v6

    .line 410
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1hSDK;->registerClient()F

    move-result v0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    return v5

    :cond_2
    return v6
.end method

.method private declared-synchronized AFInAppEventType(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1jSDK;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 372
    :try_start_0
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 366
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    monitor-exit p0

    return v1

    .line 354
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    monitor-exit p0

    return v1

    .line 358
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->AFInAppEventParameterName()Z

    move-result v2

    if-nez v2, :cond_3

    .line 366
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 372
    monitor-exit p0

    return v1

    :cond_2
    const/4 p1, 0x0

    .line 366
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v2

    .line 6164
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v2

    .line 7017
    iget v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFKeystoreWrapper:I

    if-gt v2, v3, :cond_9

    .line 355
    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0

    .line 372
    rem-int v2, v0, v0

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1jSDK;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 372
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_4

    .line 366
    monitor-exit p0

    return v1

    :cond_4
    monitor-exit p0

    return v1

    .line 7018
    :cond_5
    :try_start_5
    iget-object p2, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFInAppEventType:Ljava/lang/String;

    .line 367
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFb1hSDK;->values(Ljava/lang/String;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p2, :cond_6

    .line 368
    monitor-exit p0

    return v1

    .line 7019
    :cond_6
    :try_start_6
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFLogger:Ljava/lang/String;

    .line 369
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 355
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_7

    .line 370
    monitor-exit p0

    return v1

    :cond_7
    monitor-exit p0

    return v1

    .line 372
    :cond_8
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 364
    :cond_9
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method private varargs declared-synchronized AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 280
    :try_start_0
    rem-int v1, v0, v0

    .line 272
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    .line 257
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->force()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    const v2, 0x18000

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x42

    :try_start_1
    div-int/2addr v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v2, :cond_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1

    .line 257
    :cond_0
    iget v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lt v1, v2, :cond_1

    goto/16 :goto_2

    .line 261
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 263
    const-string v4, ", "

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_2

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " _/AppsFlyer_6.13.0 ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/AppsFlyer_6.13.0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    :goto_0
    iget p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    shl-int/2addr p3, v1

    add-int/2addr p2, p3

    sget p3, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-le p2, p3, :cond_4

    .line 280
    :try_start_4
    sget p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p2, p2, 0x31

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p2, :cond_3

    .line 271
    :try_start_5
    iget p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    shr-int p2, p3, p2

    rem-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    sub-int/2addr p3, p2

    div-int/2addr p3, v0

    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x1

    .line 280
    :goto_1
    :try_start_6
    rem-int p2, v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 274
    :cond_4
    :try_start_7
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_5

    .line 280
    :try_start_8
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 277
    :try_start_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    const-string p2, "+~+~ The limit has been exceeded, and no more data is available. +~+~"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    add-int/lit16 p1, p1, 0x8a

    iput p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    monitor-exit p0

    return-void

    .line 280
    :catchall_1
    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1jSDK;)Z
    .locals 2

    const/4 v0, 0x2

    .line 387
    rem-int v1, v0, v0

    .line 378
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog()Z

    move-result p1

    .line 387
    sget p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p2, p2, 0x41

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p2, v0

    return p1

    .line 8015
    :cond_0
    iget p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFInAppEventParameterName:F

    .line 384
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType(F)Z

    move-result p1

    .line 385
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1hSDK;->values(Z)V

    .line 387
    sget p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p2, p2, 0x49

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p2, v0

    return p1
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    .line 394
    rem-int v1, v0, v0

    .line 392
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    .line 391
    invoke-static {p0}, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 394
    new-instance v1, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    invoke-static {}, Lcom/appsflyer/internal/AFb1hSDK;->unregisterClient()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/internal/AFd1cSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    return p0

    :cond_0
    sget p0, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p0, v0

    return v2
.end method

.method static AFLogger()V
    .locals 1

    const v0, -0x5889e0d7

    sput v0, Lcom/appsflyer/internal/AFb1hSDK;->e:I

    const v0, 0x4187a76c

    sput v0, Lcom/appsflyer/internal/AFb1hSDK;->d:I

    const v0, 0x58fb8198

    sput v0, Lcom/appsflyer/internal/AFb1hSDK;->v:I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        -0x63t
        0x7bt
        -0x68t
        0xet
    .end array-data
.end method

.method private static a(SIBII[Ljava/lang/Object;)V
    .locals 14

    const/4 v0, 0x2

    .line 11246
    rem-int v1, v0, v0

    .line 11186
    new-instance v1, Lcom/appsflyer/internal/AFj1nSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1nSDK;-><init>()V

    .line 11187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11190
    sget v3, Lcom/appsflyer/internal/AFb1hSDK;->d:I

    int-to-long v3, v3

    const-wide v5, 0x6c7e5d154187a70eL    # 4.08874731179044E214

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int v3, p3, v4

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-int/lit8 v9, v4, 0x1

    if-eq v9, v8, :cond_5

    .line 11246
    sget v3, Lcom/appsflyer/internal/AFb1hSDK;->$11:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1hSDK;->$10:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_4

    .line 11194
    sget-object v3, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog:[B

    if-eqz v3, :cond_2

    array-length v9, v3

    new-array v10, v9, [B

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_1

    aget-byte v12, v3, v11

    int-to-long v12, v12

    xor-long/2addr v12, v5

    long-to-int v13, v12

    int-to-byte v12, v13

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v10

    :cond_2
    if-eqz v3, :cond_3

    .line 11196
    sget-object v3, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog:[B

    sget v9, Lcom/appsflyer/internal/AFb1hSDK;->e:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int v10, p4, v10

    aget-byte v3, v3, v10

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-byte v3, v3

    sget v9, Lcom/appsflyer/internal/AFb1hSDK;->d:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int/2addr v3, v10

    int-to-byte v3, v3

    goto :goto_2

    .line 11202
    :cond_3
    sget-object v3, Lcom/appsflyer/internal/AFb1hSDK;->force:[S

    sget v9, Lcom/appsflyer/internal/AFb1hSDK;->e:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int v10, p4, v10

    aget-short v3, v3, v10

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-short v3, v3

    sget v9, Lcom/appsflyer/internal/AFb1hSDK;->d:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int/2addr v3, v10

    int-to-short v3, v3

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 11194
    throw p0

    :cond_5
    :goto_2
    if-lez v3, :cond_c

    sget v9, Lcom/appsflyer/internal/AFb1hSDK;->$11:I

    add-int/lit8 v9, v9, 0x7d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1hSDK;->$10:I

    rem-int/2addr v9, v0

    if-eqz v9, :cond_6

    .line 11211
    div-int v9, p4, v3

    add-int/lit8 v9, v9, -0x5

    sget v10, Lcom/appsflyer/internal/AFb1hSDK;->e:I

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v11, v10

    sub-int/2addr v9, v11

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_6
    add-int v9, p4, v3

    sub-int/2addr v9, v0

    sget v10, Lcom/appsflyer/internal/AFb1hSDK;->e:I

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v11, v10

    add-int/2addr v9, v11

    if-eqz v4, :cond_7

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v9, v4

    iput v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    .line 11222
    sget v4, Lcom/appsflyer/internal/AFb1hSDK;->v:I

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    add-int/2addr p1, v4

    int-to-char p1, p1

    iput-char p1, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 11223
    iget-char p1, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11226
    iget-char p1, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char p1, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 11227
    sget-object p1, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog:[B

    if-eqz p1, :cond_9

    array-length v4, p1

    new-array v9, v4, [B

    .line 11211
    sget v10, Lcom/appsflyer/internal/AFb1hSDK;->$10:I

    add-int/lit8 v10, v10, 0xd

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1hSDK;->$11:I

    rem-int/2addr v10, v0

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v4, :cond_8

    .line 11227
    aget-byte v11, p1, v10

    int-to-long v11, v11

    xor-long/2addr v11, v5

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    move-object p1, v9

    :cond_9
    if-eqz p1, :cond_a

    .line 11211
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->$11:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1hSDK;->$10:I

    rem-int/2addr p1, v0

    const/4 p1, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    .line 11228
    :goto_6
    iput v8, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    :goto_7
    iget v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    if-ge v0, v3, :cond_c

    if-eqz p1, :cond_b

    .line 11233
    sget-object v0, Lcom/appsflyer/internal/AFb1hSDK;->afInfoLog:[B

    iget v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v9, v4, -0x1

    iput v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-byte v0, v0, v4

    int-to-long v9, v0

    xor-long/2addr v9, v5

    long-to-int v0, v9

    int-to-byte v0, v0

    .line 11234
    iget-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v0, p0

    int-to-byte v0, v0

    xor-int v0, v0, p2

    add-int/2addr v4, v0

    int-to-char v0, v4

    iput-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    goto :goto_8

    .line 11238
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/AFb1hSDK;->force:[S

    iget v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v9, v4, -0x1

    iput v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-short v0, v0, v4

    int-to-long v9, v0

    xor-long/2addr v9, v5

    long-to-int v0, v9

    int-to-short v0, v0

    .line 11239
    iget-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v0, p0

    int-to-short v0, v0

    xor-int v0, v0, p2

    add-int/2addr v4, v0

    int-to-char v0, v4

    iput-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 11241
    :goto_8
    iget-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11242
    iget-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 11228
    iget v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    goto :goto_7

    .line 11246
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, v7

    return-void
.end method

.method private afInfoLog()Z
    .locals 4

    const/4 v0, 0x2

    .line 436
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    const-string v2, "participantInProxy"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v1

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0

    return v1
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 87
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v2, v1, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0

    .line 82
    iget-boolean v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x7d

    .line 87
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    .line 87
    const-string v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private force()Z
    .locals 5

    const/4 v0, 0x2

    .line 199
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->unregisterClient:Z

    const/16 v4, 0x10

    div-int/2addr v4, v3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->unregisterClient:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0

    iget-boolean v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return v3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized i()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 345
    :try_start_0
    rem-int v1, v0, v0

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    const/4 v1, 0x0

    .line 345
    iput v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static registerClient()F
    .locals 4

    const/4 v0, 0x2

    .line 178
    rem-int v1, v0, v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private static unregisterClient()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 193
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0

    const-string v0, "6.13.0"

    return-object v0
.end method

.method private declared-synchronized v()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 289
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    .line 287
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "data"

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->i()V

    .line 289
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static valueOf(Lcom/appsflyer/internal/AFh1nSDK;)Lcom/appsflyer/internal/AFh1jSDK;
    .locals 4

    const/4 v0, 0x2

    .line 424
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 10068
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    if-eqz p0, :cond_1

    .line 11012
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    return-object p0

    .line 10068
    :cond_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    .line 420
    throw v1

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    throw v1
.end method

.method private declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x2

    .line 218
    :try_start_0
    rem-int v1, v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x7a

    int-to-short v3, v2

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    const v5, -0x197c2633

    add-int/2addr v4, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpl-float v5, v5, v6

    rsub-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    add-int/lit8 v6, v6, -0x5d

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    const v9, 0x190e47d9

    sub-int/2addr v9, v8

    new-array v8, v7, [Ljava/lang/Object;

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFb1hSDK;->a(SIBII[Ljava/lang/Object;)V

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "platform_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "advertiserId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    rem-int p1, v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 212
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 213
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    rem-int p1, v0, v0

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p1, :cond_5

    .line 218
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_4

    .line 216
    :try_start_7
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method private declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 252
    :try_start_0
    rem-int v1, v0, v0

    .line 244
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 240
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    .line 244
    :try_start_2
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "app_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    :try_start_4
    rem-int p1, v0, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 244
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p1, :cond_2

    .line 252
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez p1, :cond_1

    .line 244
    :try_start_7
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p3, "app_version"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 246
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez p1, :cond_3

    .line 252
    :try_start_8
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 247
    :try_start_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    .line 249
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 250
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 252
    :catchall_0
    monitor-exit p0

    return-void

    .line 250
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method private declared-synchronized values(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFd1sSDK;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 328
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    .line 298
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    .line 299
    const-string v2, "remote_debug_static_data"

    .line 300
    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 305
    :try_start_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFa1oSDK;->AFInAppEventType(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 309
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v3

    .line 310
    const-string v5, "advertiserId"

    .line 311
    invoke-virtual {v1, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4082
    iget-object p3, p3, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    .line 5018
    iget-object p4, p4, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    .line 310
    invoke-direct {p0, v5, p3, p4}, Lcom/appsflyer/internal/AFb1hSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "6.13.0."

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p4, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 316
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p4

    invoke-interface {p4}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p4

    .line 5065
    iget-object p4, p4, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 316
    const-string v3, "KSAppsFlyerId"

    .line 317
    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "uid"

    .line 318
    invoke-virtual {v1, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-direct {p0, p3, p4, v3, v5}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 320
    :try_start_3
    invoke-virtual {p2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 321
    const-string p3, "channel"

    invoke-virtual {v1, p3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 322
    const-string p4, "preInstallName"

    invoke-virtual {v1, p4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 323
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFb1hSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0

    rem-int/2addr v0, v0

    .line 326
    :catchall_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :catchall_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object p3, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p3

    .line 5164
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string p4, "appsFlyerCount"

    invoke-interface {p3, p4, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result p3

    .line 328
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private values(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 432
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    const-string v2, "participantInProxy"

    invoke-interface {v1, v2, p1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private values(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    .line 401
    rem-int v1, v0, v0

    .line 399
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 398
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr p1, v0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    .line 8168
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 9025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 9168
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 10025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 9084
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8089
    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 398
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x2

    .line 428
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    const-string v2, "participantInProxy"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 4

    const/4 v0, 0x2

    .line 165
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v1, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->unregisterClient:Z

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final AFInAppEventParameterName(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 148
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    const-string v0, "server_response"

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventParameterName(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    .line 138
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4f

    .line 135
    div-int/lit8 v3, v3, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    .line 138
    :goto_0
    sget v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v3, v3, 0xb

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v3, v0

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v1, :cond_3

    .line 138
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/16 v0, 0x3f

    div-int/lit8 v0, v0, 0x0

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 138
    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    .line 137
    :goto_2
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    .line 138
    const-string v0, "exception"

    invoke-direct {p0, v0, v2, p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventType()Z
    .locals 4

    const/4 v0, 0x2

    .line 75
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    .line 66
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v1

    .line 1064
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    .line 2062
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    .line 66
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1hSDK;->valueOf(Lcom/appsflyer/internal/AFh1nSDK;)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v2

    .line 2069
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    .line 3067
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

    .line 67
    invoke-static {v2}, Lcom/appsflyer/internal/AFb1hSDK;->valueOf(Lcom/appsflyer/internal/AFh1nSDK;)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object v2

    .line 68
    invoke-direct {p0, v1, v2}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1jSDK;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 75
    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->d()V

    return v1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper()V

    .line 73
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1hSDK;->valueOf()V

    return v1
.end method

.method public final declared-synchronized AFKeystoreWrapper()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 160
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    .line 159
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1hSDK;->values()V

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1hSDK;->i()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    .line 159
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1hSDK;->values()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 3

    const/4 v0, 0x2

    .line 122
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    .line 111
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/Map;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 4065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    .line 114
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object p1

    if-nez p1, :cond_0

    .line 116
    const-string p1, "could not send null proxy data"

    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "request was null"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/appsflyer/internal/AFb1hSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/appsflyer/internal/AFb1hSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFe1ySDK;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x3d

    div-int/lit8 p1, p1, 0x0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "could not send proxy data"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 143
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    const-string v0, "server_request"

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-direct {p0, v0, p1, v2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 128
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    const-string v0, "public_api_call"

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final e()Z
    .locals 5

    const/4 v0, 0x2

    .line 170
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v2, v1, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
.end method

.method public final declared-synchronized valueOf()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 98
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0

    .line 92
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x65

    .line 98
    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    const/16 v0, 0x4b

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_3
    const-string v1, "r_debugging_off"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFLogger:Z

    .line 98
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1hSDK;->valueOf:Z

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final valueOf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 153
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-direct {p0, v2, p1, v3}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    sget p1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method public final declared-synchronized values()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 105
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    rem-int/2addr v1, v0

    .line 103
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/appsflyer/internal/AFb1hSDK;->values:I

    sget v2, Lcom/appsflyer/internal/AFb1hSDK;->w:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1hSDK;->i:I

    rem-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    const/16 v0, 0x45

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
