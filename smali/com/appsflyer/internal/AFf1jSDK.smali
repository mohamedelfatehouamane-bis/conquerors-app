.class public final Lcom/appsflyer/internal/AFf1jSDK;
.super Lcom/appsflyer/internal/AFf1pSDK;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static afDebugLog:I = 0x1

.field private static afErrorLog:[I

.field private static afVerboseLog:I


# instance fields
.field private final afInfoLog:Ljava/lang/String;

.field private final afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

.field private final force:Lcom/appsflyer/internal/AFd1rSDK;

.field private final v:Lcom/appsflyer/internal/AFd1lSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    return-void

    :array_0
    .array-data 4
        -0x5db3e7a4
        0x2168ac08
        0x2c517602
        0x531b12c2
        0x1497fe28
        -0x6959a6cc
        0x8ad6a69
        0x35d2c506
        0x430fe2d9
        0x2ecd72c1
        -0x1fac45ae
        -0x4d54fb4a
        0xf31220e
        0xa5b0f54
        0x5aa858a0
        -0x21775ab
        -0x1456c06
        -0x25dbf7e2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/appsflyer/internal/AFg1pSDK;

    .line 45
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 1025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 45
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1pSDK;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, v0, p2, p1}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 49
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    .line 50
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog:Ljava/lang/String;

    .line 52
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1jSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

    return-void
.end method

.method private static a([II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 3172
    rem-int v2, v1, v1

    .line 3115
    new-instance v2, Lcom/appsflyer/internal/AFj1tSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFj1tSDK;-><init>()V

    const/4 v3, 0x4

    .line 3117
    new-array v3, v3, [C

    .line 3118
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 3119
    sget-object v5, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    const-wide v6, -0x14ba8d02124e5e0bL    # -5.509064420944311E208

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    array-length v9, v5

    new-array v10, v9, [I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    .line 3172
    sget v12, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    add-int/lit8 v12, v12, 0x29

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    rem-int/2addr v12, v1

    if-nez v12, :cond_0

    aget v12, v5, v11

    int-to-long v12, v12

    div-long/2addr v12, v6

    long-to-int v13, v12

    aput v13, v10, v11

    goto :goto_0

    .line 3119
    :cond_0
    aget v12, v5, v11

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v13, v12

    aput v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v10

    :cond_2
    array-length v5, v5

    new-array v9, v5, [I

    .line 3120
    sget-object v10, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    if-eqz v10, :cond_4

    array-length v11, v10

    new-array v12, v11, [I

    .line 3172
    sget v13, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    add-int/lit8 v13, v13, 0x77

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    rem-int/2addr v13, v1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_3

    .line 3120
    aget v14, v10, v13

    int-to-long v14, v14

    xor-long/2addr v14, v6

    long-to-int v15, v14

    aput v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v10, v12

    :cond_4
    invoke-static {v10, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3122
    iput v8, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    :goto_2
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    array-length v6, v0

    if-ge v5, v6, :cond_6

    .line 3124
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    aget v5, v0, v5

    const/16 v6, 0x10

    shr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 3125
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    aget v5, v0, v5

    int-to-char v5, v5

    const/4 v7, 0x1

    aput-char v5, v3, v7

    .line 3126
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v5, v7

    aget v5, v0, v5

    shr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 3127
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v5, v7

    aget v5, v0, v5

    int-to-char v5, v5

    const/4 v10, 0x3

    aput-char v5, v3, v10

    .line 3131
    aget-char v5, v3, v8

    shl-int/2addr v5, v6

    aget-char v11, v3, v7

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3132
    aget-char v5, v3, v1

    shl-int/2addr v5, v6

    aget-char v11, v3, v10

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3135
    invoke-static {v9}, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper([I)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    .line 3140
    iget v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    aget v12, v9, v5

    xor-int/2addr v11, v12

    iput v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3141
    iget v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    invoke-static {v11}, Lcom/appsflyer/internal/AFj1tSDK;->values(I)I

    move-result v11

    iget v12, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    xor-int/2addr v11, v12

    iput v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3143
    iget v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3144
    iget v12, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    iput v12, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3145
    iput v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3147
    :cond_5
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3148
    iget v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    iput v11, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3149
    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3151
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    aget v11, v9, v6

    xor-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3152
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    const/16 v11, 0x11

    aget v12, v9, v11

    xor-int/2addr v5, v12

    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3155
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3157
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    ushr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 3158
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 3159
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    ushr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 3160
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    int-to-char v5, v5

    aput-char v5, v3, v10

    .line 3163
    invoke-static {v9}, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper([I)V

    .line 3166
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v5, v5, 0x2

    aget-char v6, v3, v8

    aput-char v6, v4, v5

    .line 3167
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v7

    aget-char v6, v3, v7

    aput-char v6, v4, v5

    .line 3168
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    aget-char v6, v3, v1

    aput-char v6, v4, v5

    .line 3169
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    aget-char v6, v3, v10

    aput-char v6, v4, v5

    .line 3122
    iget v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    .line 3172
    sget v5, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    add-int/2addr v5, v11

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    rem-int/2addr v5, v1

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method

.method private afInfoLog()V
    .locals 5

    const/4 v0, 0x2

    .line 143
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v1, v0

    const-string v2, "[register] Successfully registered for Uninstall Tracking"

    const/4 v3, 0x1

    const-string v4, "sentRegisterRequestToAF"

    .line 142
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 143
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v1, v0

    return-void
.end method


# virtual methods
.method protected final AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2

    const/4 p1, 0x2

    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v0, p1

    return-void
.end method

.method protected final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 9

    const/4 v0, 0x2

    .line 131
    rem-int v1, v0, v0

    .line 66
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 67
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    .line 2025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v2

    if-eqz v1, :cond_8

    .line 73
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 81
    :try_start_0
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 82
    const-string v6, "app_version_code"

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 83
    const-string v6, "app_version_name"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 85
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v6, "app_name"

    invoke-virtual {p1, v6, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 88
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 89
    const-string v2, "yyyy-MM-dd_HHmmssZ"

    .line 3020
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 90
    const-string v2, "installDate"

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 92
    const-string v4, "Exception while collecting application version info."

    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1jSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFg1qSDK;->values(Ljava/util/Map;)V

    .line 96
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v2

    const-string v4, "ivc"

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    sget v4, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v4, v0

    .line 100
    const-string v4, "appUserId"

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 104
    :cond_0
    :try_start_1
    const-string v2, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    const v2, -0x47197f3d

    const v4, -0x6cf69bbd

    const v6, 0x7bc62cac

    const v7, -0x50b4ab5e

    .line 105
    filled-new-array {v4, v6, v7, v2}, [I

    move-result-object v2

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/appsflyer/internal/AFf1jSDK;->a([II[Ljava/lang/Object;)V

    aget-object v2, v3, v5

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 107
    const-string v3, "Exception while collecting device brand and model."

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "deviceTrackingDisabled"

    invoke-virtual {v2, v3, v5}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    sget v2, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v2, v0

    .line 112
    const-string v2, "true"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    sget v2, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v2, v0

    .line 116
    const-string v2, "amazon_aid"

    .line 3028
    iget-object v3, v1, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    .line 116
    invoke-virtual {p1, v2, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 3033
    iget-object v1, v1, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Ljava/lang/Boolean;

    .line 117
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amazon_aid_limit"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 119
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "advertiserId"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 131
    sget v4, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v4, v4, 0x3

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    .line 123
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    .line 3065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 123
    const-string v2, "devkey"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 124
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 125
    const-string v1, "af_gcm_token"

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 126
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2, v5}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    .line 127
    const-string v2, "launch_counter"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 129
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1jSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1rSDK;->values()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 131
    const-string v2, "channel"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    :cond_5
    sget p1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_6

    return-void

    :cond_6
    throw v3

    .line 74
    :cond_7
    const-string p1, "CustomerUserId not set, Tracking is disabled"

    invoke-static {p1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomerUserId not set, register is not sent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context is not provided, can\'t send register request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final unregisterClient()Z
    .locals 3

    const/4 v0, 0x2

    .line 138
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v2, v0

    const/4 v0, 0x0

    if-nez v2, :cond_0

    const/16 v1, 0x17

    div-int/2addr v1, v0

    :cond_0
    return v0
.end method

.method public final valueOf()V
    .locals 4

    const/4 v0, 0x2

    .line 60
    rem-int v1, v0, v0

    .line 57
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1pSDK;->valueOf()V

    .line 1107
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v1, :cond_3

    .line 60
    sget v2, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 59
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 60
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v1, v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog()V

    if-eqz v1, :cond_1

    return-void

    :cond_1
    throw v3

    :cond_2
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    throw v3

    :cond_3
    return-void
.end method

.method protected final values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2

    const/4 p1, 0x2

    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    const/16 p1, 0x42

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-void
.end method
