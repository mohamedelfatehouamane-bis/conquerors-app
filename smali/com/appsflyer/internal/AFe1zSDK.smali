.class public final Lcom/appsflyer/internal/AFe1zSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventType:Ljava/lang/String; = null

.field private static AFLogger:I = 0x0

.field private static e:I = 0x1

.field private static registerClient:I

.field public static values:Ljava/lang/String;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1vSDK;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFe1jSDK;

.field private final valueOf:Lcom/appsflyer/AppsFlyerProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType()V

    .line 58
    const-string v0, "https://%sgcdsdk.%s/install_data/v5.0/"

    sput-object v0, Lcom/appsflyer/internal/AFe1zSDK;->values:Ljava/lang/String;

    .line 61
    const-string v0, "https://%sonelink.%s/shortlink-sdk/v2"

    sput-object v0, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType:Ljava/lang/String;

    sget v0, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x23

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFe1vSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1jSDK;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1vSDK;

    .line 75
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 76
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1zSDK;->valueOf:Lcom/appsflyer/AppsFlyerProperties;

    .line 77
    iput-object p4, p0, Lcom/appsflyer/internal/AFe1zSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1jSDK;

    return-void
.end method

.method static AFInAppEventType()V
    .locals 1

    const v0, 0x164c764

    sput v0, Lcom/appsflyer/internal/AFe1zSDK;->registerClient:I

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            "Lcom/appsflyer/internal/AFe1kSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 309
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v1, v0

    .line 308
    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1zSDK;->valueOf()Z

    move-result v1

    .line 309
    invoke-direct {p0, p1, p2, v1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;Z)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p2, p2, 0x4d

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p2, v0

    return-object p1
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;Z)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            "Lcom/appsflyer/internal/AFe1kSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 17021
    rem-int v1, v0, v0

    .line 16124
    iput-boolean p3, p1, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Z

    .line 315
    iget-object p3, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1vSDK;

    .line 17021
    new-instance v1, Lcom/appsflyer/internal/AFe1xSDK;

    iget-object v2, p3, Lcom/appsflyer/internal/AFe1vSDK;->values:Ljava/util/concurrent/ExecutorService;

    iget-object p3, p3, Lcom/appsflyer/internal/AFe1vSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

    invoke-direct {v1, p1, v2, p3, p2}, Lcom/appsflyer/internal/AFe1xSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFe1sSDK;Lcom/appsflyer/internal/AFe1kSDK;)V

    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static varargs AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 338
    rem-int v1, v0, v0

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    .line 335
    const-string v2, "v2"

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 336
    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 21119
    const-string v1, "\u2063"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p2, p0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p1, v0

    return-object p0
.end method

.method private static a(IZIILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x2

    .line 22148
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->$11:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->$10:I

    rem-int/2addr v1, v0

    if-eqz p4, :cond_0

    .line 0
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    .line 22108
    new-instance v1, Lcom/appsflyer/internal/AFj1lSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1lSDK;-><init>()V

    .line 22111
    new-array v2, p0, [C

    const/4 v3, 0x0

    .line 22115
    iput v3, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    if-ge v4, p0, :cond_1

    .line 22148
    sget v4, Lcom/appsflyer/internal/AFe1zSDK;->$10:I

    add-int/lit8 v4, v4, 0x23

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFe1zSDK;->$11:I

    rem-int/2addr v4, v0

    .line 22117
    iget v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    aget-char v4, p4, v4

    iput v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->values:I

    .line 22119
    iget v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    iget v5, v1, Lcom/appsflyer/internal/AFj1lSDK;->values:I

    add-int/2addr v5, p3

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 22120
    iget v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    aget-char v5, v2, v4

    sget v6, Lcom/appsflyer/internal/AFe1zSDK;->registerClient:I

    int-to-long v6, v6

    const-wide v8, 0x6bec1ef30164c772L    # 7.395986591959163E211

    xor-long/2addr v6, v8

    long-to-int v7, v6

    sub-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 22115
    iget v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 22148
    sget p3, Lcom/appsflyer/internal/AFe1zSDK;->$11:I

    add-int/lit8 p3, p3, 0x19

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lcom/appsflyer/internal/AFe1zSDK;->$10:I

    rem-int/2addr p3, v0

    .line 22126
    iput p2, v1, Lcom/appsflyer/internal/AFj1lSDK;->valueOf:I

    .line 22128
    new-array p2, p0, [C

    .line 22130
    invoke-static {v2, v3, p2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22131
    iget p3, v1, Lcom/appsflyer/internal/AFj1lSDK;->valueOf:I

    sub-int p3, p0, p3

    iget p4, v1, Lcom/appsflyer/internal/AFj1lSDK;->valueOf:I

    invoke-static {p2, v3, v2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22132
    iget p3, v1, Lcom/appsflyer/internal/AFj1lSDK;->valueOf:I

    iget p4, v1, Lcom/appsflyer/internal/AFj1lSDK;->valueOf:I

    sub-int p4, p0, p4

    invoke-static {p2, p3, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p1, :cond_4

    .line 22138
    new-array p1, p0, [C

    .line 22140
    iput v3, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    :goto_1
    iget p2, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    if-ge p2, p0, :cond_3

    .line 22148
    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->$10:I

    add-int/lit8 p2, p2, 0xf

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFe1zSDK;->$11:I

    rem-int/2addr p2, v0

    .line 22142
    iget p2, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    iget p3, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    sub-int p3, p0, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v2, p3

    aput-char p3, p1, p2

    .line 22140
    iget p2, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lcom/appsflyer/internal/AFj1lSDK;->AFKeystoreWrapper:I

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 22148
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p5, v3

    return-void
.end method

.method private valueOf()Z
    .locals 4

    const/4 v0, 0x2

    .line 344
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1zSDK;->valueOf:Lcom/appsflyer/AppsFlyerProperties;

    const-string v2, "http_cache"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr v1, v0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private values()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 330
    rem-int v1, v0, v0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    const-string v2, "build_number"

    const-string v3, "6.13.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 17164
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v2

    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "counter"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-string v9, "\u0007\ufffa\u000b\ufffb\ufffd"

    const-string v11, "sdk"

    const-string v12, "app_version_name"

    const-string v13, "app_id"

    const-string v14, "platformextension"

    cmpl-float v2, v2, v3

    add-int/lit8 v5, v2, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v10, v2, v7

    add-int/lit8 v7, v10, 0x3

    const-string v2, ""

    invoke-static {v2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v8, v2, 0x7d

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFe1zSDK;->a(IZIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v2, v10, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 18168
    iget-object v3, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 19025
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 19168
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 20025
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 19084
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 18089
    invoke-static {v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 20168
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 21025
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 20084
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v2, Lcom/appsflyer/internal/AFb1gSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFb1gSDK;-><init>()V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget v2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v2, v0

    return-object v1
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 270
    rem-int v1, v0, v0

    .line 259
    new-instance v2, Lcom/appsflyer/internal/AFe1mSDK;

    .line 263
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v5, "GET"

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p1, 0x2710

    .line 15097
    iput p1, v2, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:I

    const/4 p1, 0x0

    .line 15137
    iput-boolean p1, v2, Lcom/appsflyer/internal/AFe1mSDK;->AFKeystoreWrapper:Z

    .line 270
    new-instance p1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v2, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method public final AFInAppEventParameterName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 99
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v4, 0x3a932f3e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    const/16 v5, 0x30

    invoke-static {p1, v5, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    add-int/lit8 p1, p1, 0x4a

    invoke-static {p2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const v9, 0xa12c

    cmp-long v10, v5, v7

    sub-int/2addr v9, v10

    int-to-char v5, v9

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x24

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v5, "values"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v3, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p1, v0

    .line 91
    new-instance p1, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {p1, v1}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 1199
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_4

    .line 99
    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x3d

    div-int/2addr v2, p2

    if-nez v1, :cond_2

    goto :goto_1

    .line 1199
    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1260
    :cond_3
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription_v2?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    sget p3, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p3, p3, 0xb

    rem-int/lit16 v1, p3, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p3, v0

    goto :goto_2

    .line 1257
    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2220
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 3168
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4025
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 3084
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2220
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1207
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v2, Lcom/appsflyer/internal/AFe1mSDK;

    .line 97
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x1

    const-string v5, "POST"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 99
    new-instance p1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v2, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 86
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 88
    const-string p2, "AFFinalizer: reflection init failed"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 160
    rem-int v1, v0, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 11168
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 12025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 11084
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    .line 12098
    iget-object v3, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v3, v2}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1, v2, p1, p2}, Lcom/appsflyer/internal/AFe1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1qSDK;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFe1rSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFe1rSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p2, p2, 0x27

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x2

    .line 216
    rem-int v2, v1, v1

    .line 188
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    const-string v4, "ttl"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "uuid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v4, "data"

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v4, "meta"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1zSDK;->values()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 216
    sget v4, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v4, v4, 0x4f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v4, v1

    const-string v5, "brand_domain"

    if-nez v4, :cond_0

    .line 196
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 198
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1oSDK;->values(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 202
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int/lit8 v8, v4, 0xc

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int/lit8 v10, v4, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v11, v4, 0x76

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v12, "\u0014\u0015\u0012\u0005\uffe1\u0006\uffcd\ufff3\t\u0007\u000e\u0001"

    invoke-static/range {v8 .. v13}, Lcom/appsflyer/internal/AFe1zSDK;->a(IZIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v13, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const-string v6, "POST"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p5

    invoke-static {v8, v2, v5}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 207
    new-instance v3, Lcom/appsflyer/internal/AFe1mSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType:Ljava/lang/String;

    .line 14052
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v2

    aput-object v9, v10, v14

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 216
    new-instance v0, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v3, v0, v14}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;Z)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v0

    sget v2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v2, v1

    return-object v0
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1tSDK;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1tSDK;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 178
    rem-int v1, v0, v0

    .line 168
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->values()[B

    move-result-object v4

    .line 169
    new-instance v2, Lcom/appsflyer/internal/AFe1mSDK;

    .line 13083
    iget-object v3, p1, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    .line 173
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x1

    const-string v5, "POST"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 178
    new-instance p1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v2, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1ySDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1ySDK;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x2

    .line 301
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr v2, v1

    const/4 v2, 0x0

    .line 291
    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x0

    aput-object p1, v3, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v5, 0x3a932f3e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x49

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    const v8, 0xa12b

    cmpl-float v6, v6, v7

    add-int/2addr v6, v8

    int-to-char v6, v6

    invoke-static {v0, v0, p2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v6, v0}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v0, "values"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class p2, Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 293
    :try_start_1
    const-string p1, "AFFinalizer: failed to create bytes"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "failed to create bytes from proxyData"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr p1, v1

    return-object v2

    :cond_1
    new-instance p2, Lcom/appsflyer/internal/AFe1ySDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {p2, v0, p1}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;[B)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 291
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 298
    const-string p2, "AFFinalizer: reflection init failed"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFa1pSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFd1lSDK;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFd1lSDK;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 156
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 143
    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p3, v3, v0

    const/4 p3, 0x1

    aput-object p2, v3, p3

    const/4 p2, 0x0

    aput-object p1, v3, p2

    sget-object v4, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v5, 0x16eeb4f7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    add-int/lit8 v4, v4, 0x48

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xa12c

    add-int/2addr v6, v7

    int-to-char v6, v6

    const-string v7, ""

    const/16 v8, 0x30

    invoke-static {v7, v8, p2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x23

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v6, "AFInAppEventParameterName"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Lcom/appsflyer/internal/AFa1pSDK;

    aput-object v7, v2, p2

    const-class p2, Ljava/lang/String;

    aput-object p2, v2, p3

    const-class p2, Lcom/appsflyer/internal/AFd1lSDK;

    aput-object p2, v2, v0

    invoke-virtual {v4, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object p2, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    new-instance v2, Lcom/appsflyer/internal/AFe1mSDK;

    .line 11083
    iget-object v3, p1, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    .line 152
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 153
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper()Z

    move-result v7

    const-string v5, "POST"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 156
    new-instance p1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v2, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p2, p2, 0x67

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p2, v0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 143
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 145
    const-string p2, "AFFinalizer: reflection init failed"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final values(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x2

    .line 253
    rem-int v3, v2, v2

    .line 226
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType:Ljava/lang/String;

    .line 15052
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v7, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFe1zSDK;->values()Ljava/util/Map;

    move-result-object v4

    .line 230
    const-string v5, "build_number"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 233
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 234
    const-string v7, "Af-UUID"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v7, "Af-Meta-Sdk-Ver"

    invoke-interface {v14, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v7, "counter"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Af-Meta-Counter"

    invoke-interface {v14, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v7, "model"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Af-Meta-Model"

    invoke-interface {v14, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v7, "platformextension"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Af-Meta-Platform"

    invoke-interface {v14, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v7, "sdk"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Af-Meta-System-Version"

    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v12, 0x0

    move-wide v15, v12

    const-string v13, "GET"

    const/16 v18, 0x0

    const-string v21, "\u0014\u0015\u0012\u0005\uffe1\u0006\uffcd\ufff3\t\u0007\u000e\u0001"

    cmp-long v4, v7, v15

    add-int/lit8 v17, v4, 0xb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v19, v4, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    rsub-int/lit8 v20, v4, 0x76

    new-array v4, v6, [Ljava/lang/Object;

    move-object/from16 v22, v4

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFe1zSDK;->a(IZIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v22, v9

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v13, v3, v0, v1, v5}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v1, v3, v0}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v10, Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 253
    new-instance v0, Lcom/appsflyer/internal/AFe1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1oSDK;-><init>()V

    move-object/from16 v1, p0

    invoke-direct {v1, v10, v0}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v0

    sget v3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v3, v3, 0x9

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr v3, v2

    return-object v0
.end method

.method public final values(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 120
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v4, 0x3a932f3e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x49

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xa12c

    add-int/2addr v5, v6

    int-to-char v5, v5

    const-string v6, ""

    invoke-static {v6, p2, p2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x24

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v5, "values"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr p1, v0

    .line 112
    new-instance p1, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {p1, v1}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 4186
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_2

    .line 120
    sget v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr v1, v0

    .line 4186
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :cond_3
    xor-int/2addr p2, v3

    if-eq p2, v3, :cond_4

    .line 120
    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p2, v0

    .line 4263
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    .line 4264
    const-string p3, "https://%sviap.%s/api/v1/android/validate_purchase?app_id="

    .line 4263
    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 4268
    :cond_4
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    .line 4269
    const-string p3, "https://%sviap.%s/api/v1/android/validate_purchase_v2?app_id="

    .line 4268
    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5220
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 6168
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 7025
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 6084
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5220
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4195
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    new-instance v4, Lcom/appsflyer/internal/AFe1mSDK;

    .line 118
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v9, 0x1

    const-string v7, "POST"

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 120
    new-instance p1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>()V

    invoke-direct {p0, v4, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 107
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 109
    const-string p2, "AFFinalizer: reflection init failed"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final values(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Lcom/appsflyer/internal/AFh1nSDK;",
            ">;"
        }
    .end annotation

    const/4 p4, 0x2

    .line 131
    rem-int v0, p4, p4

    sget v0, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr v0, p4

    .line 125
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1zSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1jSDK;

    const-string v1, ""

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 7136
    sget-object p1, Lcom/appsflyer/internal/AFe1jSDK;->AFKeystoreWrapper:Ljava/lang/String;

    goto :goto_0

    .line 9097
    :cond_0
    sget p1, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p1, p4

    .line 7136
    sget-object p1, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventParameterName:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 131
    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    add-int/lit8 p2, p2, 0x35

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    rem-int/2addr p2, p4

    const-string v3, "stg"

    if-eqz p2, :cond_2

    const/16 p2, 0x2d

    div-int/2addr p2, v2

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 7138
    :cond_2
    :goto_1
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 8107
    invoke-static {}, Lcom/appsflyer/internal/AFe1jSDK;->values()Z

    move-result p2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    move-object p2, v1

    goto :goto_2

    .line 131
    :cond_3
    sget p2, Lcom/appsflyer/internal/AFe1zSDK;->AFLogger:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lcom/appsflyer/internal/AFe1zSDK;->e:I

    rem-int/2addr p2, p4

    if-nez p2, :cond_4

    .line 9097
    iget-object p2, v0, Lcom/appsflyer/internal/AFe1jSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 v5, 0x4c

    div-int/2addr v5, v2

    goto :goto_2

    :cond_4
    iget-object p2, v0, Lcom/appsflyer/internal/AFe1jSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7142
    :goto_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    .line 7143
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v2

    aput-object v3, v6, v4

    aput-object v0, v6, p4

    const/4 p2, 0x3

    aput-object p3, v6, p2

    .line 7138
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance p2, Lcom/appsflyer/internal/AFe1mSDK;

    const-string p3, "GET"

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 10097
    iput p1, p2, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:I

    .line 131
    new-instance p1, Lcom/appsflyer/internal/AFe1lSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1lSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1kSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1
.end method
