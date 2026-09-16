.class public final Lcom/appsflyer/internal/AFf1cSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventParameterName:I = 0x0

.field private static AFInAppEventType:I = 0x1

.field private static AFKeystoreWrapper:J

.field private static valueOf:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper()V

    const-string v0, ""

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {v0, v1, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    sget v0, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const/16 v3, 0xc

    const-string v4, "\u2063"

    const-string v5, ""

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 96
    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x1

    aput-object p1, v6, v7

    aput-object p2, v6, v2

    aput-object p3, v6, v1

    aput-object p4, v6, v0

    aput-object v5, v6, v1

    .line 3119
    invoke-static {v4, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x4f

    if-ge p1, p2, :cond_2

    goto :goto_0

    .line 96
    :cond_0
    filled-new-array {p1, p2, p3, p4, v5}, [Ljava/lang/String;

    move-result-object p1

    .line 3119
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_2

    :goto_0
    sget p1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0

    .line 106
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static AFKeystoreWrapper()V
    .locals 2

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1cSDK;->valueOf:[C

    const-wide v0, 0x289f2c70696a56d3L

    sput-wide v0, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper:J

    return-void

    nop

    :array_0
    .array-data 2
        0x1855s
        0x7596s
        -0x3c29s
        0x511cs
        -0x50a7s
        0x3c9fs
        -0x753ds
        0x1805s
        0x764ds
        -0x3c7cs
        0x51cfs
        -0x50c2s
        0x3d70s
        -0x754bs
        0x18f8s
        0x7639s
        -0x3b9cs
        0x51a3s
        -0x501cs
        0x3d2as
        -0x7498s
        0x18a0s
        0x7690s
        -0x3b25s
        0x521as
        -0x5fa3s
        0x3d9cs
        -0x744ds
        0x1904s
        0x7742s
        -0x3b77s
        0x52cas
        -0x5fd0s
        0x3e73s
        -0x744bs
        0x19fbs
        0x773cs
        -0x3af8s
        0x52a1s
        -0x5f1cs
        0x3e28s
        -0x73e8s
        0x19ads
        0x77e6s
        -0x3a2bs
        0x5310s
        -0x5ea1s
        0x3e9fs
        -0x733fs
        0x1a01s
        0x6843s
        -0x3a78s
        0x53cds
        -0x5ef2s
        0x3f76s
        -0x734es
        0x1af9s
        0x684cs
        -0x3986s
        0x53a2s
        -0x5e1as
        0x3f22s
        -0x7292s
        0x1adas
    .end array-data
.end method

.method private static a(ICI[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 4111
    rem-int v1, v0, v0

    .line 4089
    new-instance v1, Lcom/appsflyer/internal/AFj1qSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1qSDK;-><init>()V

    .line 4092
    new-array v2, p0, [J

    const/4 v3, 0x0

    .line 4095
    iput v3, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    if-ge v4, p0, :cond_0

    .line 4097
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    sget-object v5, Lcom/appsflyer/internal/AFf1cSDK;->valueOf:[C

    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int/2addr v6, p2

    aget-char v5, v5, v6

    int-to-long v5, v5

    const-wide v7, -0x23df894c8c5ac4f0L    # -5.983218527406806E135

    xor-long/2addr v5, v7

    long-to-int v6, v5

    int-to-char v5, v6

    int-to-long v5, v5

    iget v9, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    int-to-long v9, v9

    sget-wide v11, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper:J

    xor-long/2addr v7, v11

    mul-long v9, v9, v7

    xor-long/2addr v5, v9

    int-to-long v7, p1

    xor-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 4095
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    .line 4106
    sget v4, Lcom/appsflyer/internal/AFf1cSDK;->$11:I

    add-int/lit8 v4, v4, 0x67

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1cSDK;->$10:I

    rem-int/2addr v4, v0

    goto :goto_0

    .line 4105
    :cond_0
    new-array p1, p0, [C

    .line 4106
    iput v3, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    :goto_1
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    if-ge v4, p0, :cond_2

    .line 4111
    sget v4, Lcom/appsflyer/internal/AFf1cSDK;->$11:I

    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1cSDK;->$10:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 4108
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    iget v5, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    aget-wide v5, v2, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, p1, v4

    .line 4106
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    rem-int/lit8 v4, v4, 0x1

    :goto_2
    iput v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    goto :goto_1

    .line 4108
    :cond_1
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    iget v5, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    aget-wide v5, v2, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, p1, v4

    .line 4106
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4111
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p3, v3

    return-void
.end method

.method private static values(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 64
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    .line 1063
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    .line 64
    sget-object p2, Lcom/appsflyer/internal/AFh1pSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    invoke-direct {p1, v0, p0}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1

    :cond_1
    const/16 v2, 0x30

    .line 68
    const-string v3, ""

    invoke-static {v3, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/lit16 v8, v8, 0x2375

    int-to-char v4, v8

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v0}, Lcom/appsflyer/internal/AFf1cSDK;->a(ICI[Ljava/lang/Object;)V

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    .line 70
    sget-object v2, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1pSDK;

    if-ne v1, v2, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object p3, v0

    .line 3058
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    const-string p3, "android"

    const-string v0, "v1"

    invoke-static {p2, p0, p3, v0, v3}, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 78
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    if-eqz p0, :cond_3

    sget-object p2, Lcom/appsflyer/internal/AFh1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1fSDK;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/appsflyer/internal/AFh1fSDK;->values:Lcom/appsflyer/internal/AFh1fSDK;

    :goto_2
    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1
.end method


# virtual methods
.method public final valueOf(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;
    .locals 4

    const/4 v0, 0x2

    .line 47
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    add-int/lit8 v2, v1, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/2addr v2, v0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/2addr v1, v0

    invoke-static {p1, p2, p3, p4}, Lcom/appsflyer/internal/AFf1cSDK;->values(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    const/4 p2, 0x0

    sget-object p3, Lcom/appsflyer/internal/AFh1fSDK;->valueOf:Lcom/appsflyer/internal/AFh1fSDK;

    invoke-direct {p1, p2, p3}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1
.end method
