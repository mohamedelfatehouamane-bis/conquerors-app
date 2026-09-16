.class public Lcom/appsflyer/internal/AFc1fSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final $$a:[B = null

.field public static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFLogger$LogLevel:[B

.field private static AFVersionDeclaration:[B

.field private static AppsFlyer2dXConversionCallback:[B

.field private static afErrorLogForExcManagerOnly:Ljava/lang/Object;

.field private static final afLogForce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final afRDLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static getLevel:Ljava/lang/Object;

.field private static init:I

.field private static onAppOpenAttributionNative:J

.field private static onInstallConversionFailureNative:I


# direct methods
.method private static $$c(ISS)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x72

    rem-int/2addr v1, p0

    xor-int/lit16 p0, p1, 0xc4

    and-int/lit16 p1, p1, 0xc4

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x7b

    const/16 p1, 0x39

    ushr-int/2addr p1, p2

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v4, p1, [B

    xor-int/lit8 v5, p1, 0x4d

    and-int/lit8 p1, p1, 0x4d

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v5, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    neg-int p0, p0

    or-int/lit8 v1, p0, 0x77

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 p0, p0, 0x77

    sub-int/2addr v1, p0

    xor-int/lit8 p0, p1, 0x58

    and-int/lit8 p1, p1, 0x58

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    xor-int/lit8 p1, p0, -0x54

    and-int/lit8 p0, p0, -0x54

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    rsub-int/lit8 p1, p2, 0x24

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v4, p1, [B

    not-int v5, p1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v5, p1

    if-nez p2, :cond_0

    :goto_0
    add-int/lit8 p1, v2, 0x11

    rem-int/lit16 v6, p1, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    const/4 p1, 0x0

    move v2, p0

    goto :goto_2

    :goto_1
    int-to-byte v2, v1

    aput-byte v2, v4, p1

    xor-int/lit8 v2, p0, 0x1c

    and-int/lit8 p0, p0, 0x1c

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1b

    if-ne p1, v5, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    xor-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    aget-byte p1, p2, v2

    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v7, v6, 0x31

    and-int/lit8 v6, v6, 0x31

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v7, v0

    move v8, p1

    move p1, p0

    move p0, v8

    :goto_2
    neg-int p0, p0

    and-int v6, v1, p0

    or-int/2addr p0, v1

    add-int/2addr v6, p0

    add-int/lit8 v1, v6, 0x1

    sget p0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v6, p0, 0x4d

    and-int/lit8 p0, p0, 0x4d

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v6, p0

    rem-int/lit16 p0, v6, 0x80

    sput p0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v6, v0

    move p0, v2

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 50

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFc1fSDK;->init$0()V

    const-wide v2, -0x514d53cbfa02e07fL    # -9.61186380690735E-84

    .line 1000
    sput-wide v2, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J

    const v0, 0x17f47e04    # 1.5799941E-24f

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    const/4 v2, 0x3

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afLogForce:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    .line 92
    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0xe1

    aget-byte v4, v0, v3

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x160

    and-int/lit16 v6, v4, 0x160

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/4 v6, 0x6

    aget-byte v7, v0, v6

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    .line 96
    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v5, :cond_0

    aget-byte v5, v0, v3

    int-to-byte v5, v5

    const/16 v8, 0x399

    int-to-short v8, v8

    const/16 v9, 0x194

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const/16 v8, 0x1f

    const/16 v9, 0x15

    .line 1793
    :try_start_1
    aget-byte v10, v0, v8

    int-to-byte v10, v10

    const/16 v11, 0x2ae

    int-to-short v11, v11

    const/16 v12, 0x1d

    aget-byte v12, v0, v12

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    .line 1794
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v0, v3

    int-to-byte v11, v11

    const/16 v12, 0x78

    aget-byte v12, v0, v12

    int-to-short v12, v12

    const/16 v13, 0x7a

    aget-byte v0, v0, v13

    int-to-byte v0, v0

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    .line 1795
    invoke-virtual {v10, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v10, v7

    check-cast v10, [Ljava/lang/Object;

    .line 1796
    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catch_0
    move-object v0, v7

    .line 1807
    :cond_1
    :try_start_2
    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v10, v8

    int-to-byte v11, v11

    const/16 v12, 0x1b4

    int-to-short v12, v12

    const/16 v13, 0xc

    aget-byte v13, v10, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    .line 1808
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v12, v10, v9

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x309

    and-int/lit16 v14, v12, 0x309

    or-int/2addr v13, v14

    int-to-short v13, v13

    const/16 v14, 0xba

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    invoke-static {v12, v13, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    .line 1809
    invoke-virtual {v11, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v7

    check-cast v11, [Ljava/lang/Object;

    .line 1810
    invoke-virtual {v10, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v0, :cond_2

    .line 113
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v11, v9

    int-to-byte v12, v12

    int-to-short v13, v3

    const/16 v14, 0x1a3

    aget-byte v11, v11, v14

    int-to-byte v11, v11

    invoke-static {v12, v13, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    move-object v12, v7

    check-cast v12, [Ljava/lang/Class;

    .line 114
    invoke-virtual {v10, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v7

    check-cast v11, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v10, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_2
    move-object v10, v7

    :goto_2
    if-eqz v0, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v13, v12, v9

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x12e

    and-int/lit16 v15, v13, 0x12e

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0xf

    aget-byte v12, v12, v15

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    move-object v13, v7

    check-cast v13, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v11, v12, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v7

    check-cast v12, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v11, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_3
    move-object v11, v7

    :goto_3
    const/4 v12, 0x2

    if-eqz v0, :cond_4

    .line 3755
    sget v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v14, v13, 0x15

    or-int/2addr v13, v9

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v14, v12

    .line 137
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v15, v14, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    int-to-byte v15, v15

    const/16 v16, 0xe1

    xor-int/lit16 v3, v15, 0xe5

    const/16 v17, 0x6

    and-int/lit16 v6, v15, 0xe5

    or-int/2addr v3, v6

    int-to-short v3, v3

    const/16 v6, 0x1a3

    :try_start_6
    aget-byte v6, v14, v6

    int-to-byte v6, v6

    invoke-static {v15, v3, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    move-object v6, v7

    check-cast v6, [Ljava/lang/Class;

    .line 138
    invoke-virtual {v13, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v6, v7

    check-cast v6, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_4
    const/16 v16, 0xe1

    const/16 v17, 0x6

    :catch_5
    nop

    :goto_4
    move-object v0, v7

    goto :goto_5

    :cond_4
    const/16 v16, 0xe1

    const/16 v17, 0x6

    goto :goto_4

    :goto_5
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_5

    :goto_6
    const/16 v18, 0x75

    const/16 v20, 0x165

    const/16 v21, 0x1f

    goto :goto_7

    :cond_5
    if-nez v5, :cond_6

    move-object v10, v7

    goto :goto_6

    .line 147
    :cond_6
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v18, 0x30d

    aget-byte v18, v15, v18

    or-int/lit8 v19, v18, 0x1

    shl-int/lit8 v19, v19, 0x1

    xor-int/lit8 v18, v18, 0x1

    const/16 v20, 0x165

    sub-int v3, v19, v18

    int-to-byte v3, v3

    const/16 v18, 0x75

    const/16 v6, 0x23b

    int-to-short v6, v6

    const/16 v19, 0x1a3

    const/16 v21, 0x1f

    aget-byte v8, v15, v19

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    :try_start_8
    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v13

    aget-byte v3, v15, v18

    int-to-byte v3, v3

    xor-int/lit16 v6, v3, 0x320

    and-int/lit16 v8, v3, 0x320

    or-int/2addr v6, v8

    int-to-short v6, v6

    aget-byte v8, v15, v20

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v6, v14, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v13

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_45

    :goto_7
    const/16 v3, 0xfc

    if-eqz v0, :cond_7

    const/16 v19, 0xfc

    goto :goto_8

    .line 151
    :cond_7
    :try_start_9
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    const/16 v6, 0x289

    int-to-short v6, v6

    aget-byte v8, v0, v21

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    :try_start_a
    new-array v6, v14, [Ljava/lang/Object;

    aput-object v5, v6, v13

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    aget-byte v8, v0, v3

    int-to-short v8, v8

    aget-byte v15, v0, v16

    int-to-byte v15, v15

    invoke-static {v5, v8, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v8, v0, v9

    int-to-byte v8, v8

    xor-int/lit16 v15, v8, 0x286

    const/16 v19, 0xfc

    and-int/lit16 v3, v8, 0x286

    or-int/2addr v3, v15

    int-to-short v3, v3

    const/16 v15, 0x1a3

    aget-byte v15, v0, v15

    int-to-byte v15, v15

    invoke-static {v8, v3, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    new-array v8, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v8, v13

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_44

    :try_start_b
    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v13

    aget-byte v3, v0, v18

    int-to-byte v3, v3

    xor-int/lit16 v6, v3, 0x320

    and-int/lit16 v8, v3, 0x320

    or-int/2addr v6, v8

    int-to-short v6, v6

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    invoke-static {v3, v6, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v14, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v13

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_43

    :goto_8
    if-nez v11, :cond_9

    if-eqz v10, :cond_9

    .line 282
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v3, v12

    .line 159
    :try_start_c
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v3, v16

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x102

    and-int/lit16 v8, v5, 0x102

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/16 v8, 0x25e

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    :try_start_d
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v14

    aput-object v10, v6, v13

    aget-byte v5, v3, v18

    int-to-byte v5, v5

    xor-int/lit16 v8, v5, 0x320

    and-int/lit16 v11, v5, 0x320

    or-int/2addr v8, v11

    int-to-short v8, v8

    aget-byte v11, v3, v20

    int-to-byte v11, v11

    invoke-static {v5, v8, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v8, v3, v18

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0x320

    and-int/lit16 v15, v8, 0x320

    or-int/2addr v11, v15

    int-to-short v11, v11

    aget-byte v3, v3, v20

    int-to-byte v3, v3

    invoke-static {v8, v11, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v8, v12, [Ljava/lang/Class;

    aput-object v3, v8, v13

    const-class v3, Ljava/lang/String;

    aput-object v3, v8, v14

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    throw v1

    :cond_8
    throw v0

    .line 162
    :cond_9
    :goto_9
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v3, v18

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v8, v5, 0x320

    or-int/2addr v6, v8

    int-to-short v6, v6

    aget-byte v8, v3, v20

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    aput-object v7, v5, v13

    aput-object v11, v5, v14

    aput-object v10, v5, v12

    aput-object v0, v5, v2

    const/4 v8, 0x4

    aput-object v11, v5, v8

    const/4 v11, 0x5

    aput-object v10, v5, v11

    aput-object v0, v5, v17

    .line 196
    new-array v10, v6, [Z

    fill-array-data v10, :array_1

    .line 200
    new-array v11, v6, [Z

    fill-array-data v11, :array_2

    .line 204
    new-array v15, v6, [Z

    aput-boolean v13, v15, v13

    aput-boolean v13, v15, v14

    aput-boolean v14, v15, v12

    aput-boolean v14, v15, v2

    aput-boolean v13, v15, v8

    const/4 v0, 0x5

    aput-boolean v14, v15, v0

    aput-boolean v14, v15, v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    const/16 v22, 0x3c

    .line 213
    :try_start_f
    aget-byte v0, v3, v21
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    int-to-byte v0, v0

    const/16 v23, 0x0

    const/16 v13, 0x64

    int-to-short v13, v13

    const/16 v24, 0x7

    :try_start_10
    aget-byte v6, v3, v22

    int-to-byte v6, v6

    invoke-static {v0, v13, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v6, 0x63

    .line 214
    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v13, 0x24e

    int-to-short v13, v13

    const/16 v25, 0x31a

    aget-byte v3, v3, v25

    int-to-byte v3, v3

    invoke-static {v6, v13, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    const/16 v3, 0x22

    if-lt v0, v3, :cond_a

    const/4 v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    const/16 v6, 0x1d

    if-ne v0, v6, :cond_b

    goto :goto_b

    :cond_b
    const/16 v6, 0x1a

    if-lt v0, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v6, 0x0

    .line 221
    :goto_c
    :try_start_11
    aput-boolean v6, v15, v23
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    if-lt v0, v9, :cond_d

    .line 282
    rem-int v6, v12, v12

    const/4 v6, 0x1

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    .line 224
    :goto_d
    :try_start_12
    aput-boolean v6, v15, v14

    if-lt v0, v9, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    .line 225
    :goto_e
    aput-boolean v0, v15, v8
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_f

    :catch_6
    nop

    goto :goto_f

    :catch_7
    const/16 v23, 0x0

    const/16 v24, 0x7

    :catch_8
    nop

    const/4 v3, 0x0

    :goto_f
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_10
    if-eqz v6, :cond_f

    goto/16 :goto_3f

    :cond_f
    const/16 v0, 0x9

    if-ge v13, v0, :cond_64

    .line 238
    :try_start_13
    aget-boolean v0, v15, v13
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    if-eqz v0, :cond_63

    const/16 v25, 0x2cf

    const/16 v26, 0x15

    .line 242
    :try_start_14
    aget-boolean v9, v10, v13

    aget-object v0, v5, v13

    aget-boolean v27, v11, v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_41

    const/16 v28, 0x4

    if-eqz v9, :cond_14

    if-eqz v0, :cond_11

    .line 2317
    :try_start_15
    sget-object v30, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v31, 0xc1

    aget-byte v2, v30, v18
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    int-to-byte v2, v2

    const/16 v32, 0x2

    or-int/lit16 v12, v2, 0x320

    int-to-short v12, v12

    :try_start_16
    aget-byte v14, v30, v20

    int-to-byte v14, v14

    invoke-static {v2, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v12, v30, v16

    int-to-byte v12, v12

    const/16 v14, 0x2e4

    int-to-short v14, v14

    const/16 v34, 0x2c

    aget-byte v8, v30, v34

    int-to-byte v8, v8

    invoke-static {v12, v14, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-nez v2, :cond_15

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    const/16 v32, 0x2

    :goto_11
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_10

    throw v2

    :cond_10
    throw v0

    :cond_11
    const/16 v31, 0xc1

    const/16 v32, 0x2

    .line 2321
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v9, v8, v19

    int-to-byte v9, v9

    const/16 v12, 0x194

    int-to-short v12, v12

    aget-byte v14, v8, v31

    int-to-byte v14, v14

    invoke-static {v9, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x4e

    int-to-byte v0, v0

    const/16 v9, 0x102

    int-to-short v9, v9

    const/16 v12, 0x149

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    invoke-static {v0, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_41

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v9, v2, 0x77

    or-int/lit8 v2, v2, 0x77

    add-int/2addr v9, v2

    rem-int/lit16 v2, v9, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_12

    goto :goto_13

    .line 282
    :cond_12
    rem-int v12, v32, v32

    :goto_13
    const/4 v2, 0x1

    .line 2321
    :try_start_18
    new-array v9, v2, [Ljava/lang/Object;

    aput-object v0, v9, v23

    aget-byte v0, v8, v18

    int-to-byte v0, v0

    const/16 v2, 0x2eb

    int-to-short v2, v2

    aget-byte v8, v8, v25

    int-to-byte v8, v8

    invoke-static {v0, v2, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v8, v23

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_13

    throw v2

    :cond_13
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_41

    :cond_14
    const/16 v31, 0xc1

    const/16 v32, 0x2

    :cond_15
    if-eqz v9, :cond_28

    .line 2336
    :try_start_1a
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 2500
    sget v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 v14, v12, 0x25

    or-int/lit8 v12, v12, 0x25

    add-int/2addr v14, v12

    rem-int/lit16 v12, v14, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v14, v14, 0x2

    .line 2337
    :try_start_1b
    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v14, v12, v18

    int-to-byte v14, v14

    const/16 v30, 0x24

    aget-byte v2, v12, v19

    int-to-short v2, v2

    aget-byte v7, v12, v16

    int-to-byte v7, v7

    invoke-static {v14, v2, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v7, v12, v16

    int-to-byte v7, v7

    const/16 v14, 0x362

    int-to-short v14, v14

    aget-byte v12, v12, v30

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v7, v14, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v35
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    const-wide/32 v37, -0x5d011b96

    move-object v7, v1

    xor-long v1, v35, v37

    :try_start_1c
    invoke-virtual {v8, v1, v2}, Ljava/util/Random;->setSeed(J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_14
    if-nez v1, :cond_26

    if-nez v2, :cond_16

    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v1, 0x6

    goto :goto_15

    :cond_16
    if-nez v12, :cond_17

    const/16 v35, 0x5

    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v1, 0x5

    goto :goto_15

    :cond_17
    if-nez v14, :cond_18

    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v1, 0x4

    goto :goto_15

    :cond_18
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v1, 0x3

    .line 2355
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    move/from16 v37, v3

    add-int/lit8 v3, v1, 0x1

    :try_start_1d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    .line 2357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_1b

    move/from16 v38, v1

    move/from16 v39, v3

    const/4 v1, 0x1

    xor-int/lit8 v3, v27, 0x1

    if-eq v3, v1, :cond_1a

    const/16 v3, 0x1a

    .line 2363
    invoke-virtual {v8, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2364
    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v33
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    if-eqz v33, :cond_19

    or-int/lit8 v33, v3, 0x41

    shl-int/lit8 v33, v33, 0x1

    xor-int/lit8 v3, v3, 0x41

    sub-int v33, v33, v3

    move/from16 v1, v33

    goto :goto_17

    :cond_19
    neg-int v3, v3

    neg-int v3, v3

    xor-int/lit8 v40, v3, 0x60

    and-int/lit8 v3, v3, 0x60

    shl-int/2addr v3, v1

    add-int v1, v40, v3

    .line 282
    rem-int v3, v32, v32

    :goto_17
    int-to-char v1, v1

    .line 2369
    :try_start_1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_1a
    const/16 v1, 0xc

    .line 2373
    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2000

    int-to-char v1, v1

    .line 2374
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_18
    xor-int/lit8 v1, v39, 0x1

    and-int/lit8 v3, v39, 0x1

    const/16 v33, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    move/from16 v1, v38

    goto :goto_16

    .line 2378
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-nez v36, :cond_1d

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v3, v2, 0x4b

    and-int/lit8 v2, v2, 0x4b

    const/16 v33, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v2, 0x2

    .line 2382
    :try_start_1f
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v33

    aput-object v0, v3, v23

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v1, v18
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    int-to-byte v2, v2

    move-object/from16 v36, v1

    xor-int/lit16 v1, v2, 0x320

    move/from16 v38, v1

    and-int/lit16 v1, v2, 0x320

    or-int v1, v38, v1

    int-to-short v1, v1

    move-object/from16 v38, v4

    :try_start_20
    aget-byte v4, v36, v20

    int-to-byte v4, v4

    invoke-static {v2, v1, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v2, v36, v18
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    int-to-byte v2, v2

    xor-int/lit16 v4, v2, 0x320

    move/from16 v39, v4

    and-int/lit16 v4, v2, 0x320

    or-int v4, v39, v4

    int-to-short v4, v4

    move-object/from16 v39, v5

    :try_start_21
    aget-byte v5, v36, v20

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v23

    const-class v2, Ljava/lang/String;

    const/16 v33, 0x1

    aput-object v2, v5, v33

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object v2, v1

    move/from16 v40, v6

    move-object/from16 v1, v35

    goto/16 :goto_1d

    :catchall_4
    move-exception v0

    goto :goto_1a

    :catchall_5
    move-exception v0

    goto :goto_19

    :catchall_6
    move-exception v0

    move-object/from16 v38, v4

    :goto_19
    move-object/from16 v39, v5

    :goto_1a
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1c

    throw v1

    :cond_1c
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :catchall_7
    move-exception v0

    goto/16 :goto_21

    :cond_1d
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    if-nez v12, :cond_1f

    const/4 v2, 0x2

    .line 2386
    :try_start_23
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v1, v3, v33

    aput-object v0, v3, v23

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v1, v18

    int-to-byte v2, v2

    xor-int/lit16 v4, v2, 0x320

    and-int/lit16 v5, v2, 0x320

    or-int/2addr v4, v5

    int-to-short v4, v4

    aget-byte v5, v1, v20

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v18

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x320

    and-int/lit16 v12, v4, 0x320

    or-int/2addr v5, v12

    int-to-short v5, v5

    aget-byte v1, v1, v20

    int-to-byte v1, v1

    invoke-static {v4, v5, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v23

    const-class v1, Ljava/lang/String;

    const/16 v33, 0x1

    aput-object v1, v5, v33

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    move-object v12, v1

    :goto_1b
    move/from16 v40, v6

    move-object/from16 v1, v35

    :goto_1c
    move-object/from16 v2, v36

    goto/16 :goto_1d

    :catchall_8
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1e

    throw v1

    :cond_1e
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :cond_1f
    if-nez v14, :cond_21

    const/4 v2, 0x2

    .line 2390
    :try_start_25
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v1, v3, v33

    aput-object v0, v3, v23

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v1, v18

    int-to-byte v2, v2

    or-int/lit16 v4, v2, 0x320

    int-to-short v4, v4

    aget-byte v5, v1, v20

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v18

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x320

    and-int/lit16 v14, v4, 0x320

    or-int/2addr v5, v14

    int-to-short v5, v5

    aget-byte v1, v1, v20

    int-to-byte v1, v1

    invoke-static {v4, v5, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v23

    const-class v1, Ljava/lang/String;

    const/16 v33, 0x1

    aput-object v1, v5, v33

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    move-object v14, v1

    goto :goto_1b

    :catchall_9
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_20

    throw v1

    :cond_20
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :cond_21
    const/4 v2, 0x2

    .line 2394
    :try_start_27
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v1, v3, v33

    aput-object v0, v3, v23

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v1, v18

    int-to-byte v2, v2

    xor-int/lit16 v4, v2, 0x320

    and-int/lit16 v5, v2, 0x320

    or-int/2addr v4, v5

    int-to-short v4, v4

    aget-byte v5, v1, v20

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v18

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x320

    move-object/from16 v35, v1

    and-int/lit16 v1, v4, 0x320

    or-int/2addr v1, v5

    int-to-short v1, v1

    aget-byte v5, v35, v20

    int-to-byte v5, v5

    invoke-static {v4, v1, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v23

    const-class v1, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 2399
    :try_start_28
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v23

    aget-byte v3, v35, v18

    int-to-byte v3, v3

    or-int/lit16 v4, v3, 0x2c0

    int-to-short v4, v4

    aget-byte v5, v35, v22

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v35, v18
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    int-to-byte v4, v4

    or-int/lit16 v5, v4, 0x320

    int-to-short v5, v5

    move/from16 v40, v6

    :try_start_29
    aget-byte v6, v35, v20

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v4, v6, v23

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 2500
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v3, v3, 0x2

    .line 2399
    :try_start_2a
    aget-byte v3, v35, v18

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x2c0

    and-int/lit16 v5, v3, 0x2c0

    or-int/2addr v4, v5

    int-to-short v4, v4

    aget-byte v5, v35, v22

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v35, v16

    int-to-byte v4, v4

    const/16 v5, 0x26c

    int-to-short v5, v5

    aget-byte v6, v35, v31

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto/16 :goto_1c

    :goto_1d
    move/from16 v3, v37

    move-object/from16 v4, v38

    move-object/from16 v5, v39

    move/from16 v6, v40

    const/16 v32, 0x2

    goto/16 :goto_14

    :catchall_a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_22

    throw v2

    :cond_22
    throw v0

    :catchall_b
    move-exception v0

    goto :goto_1e

    :catchall_c
    move-exception v0

    move/from16 v40, v6

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_23

    throw v2

    :cond_23
    throw v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_9
    .catchall {:try_start_2b .. :try_end_2b} :catchall_40

    :catch_9
    move-exception v0

    .line 2403
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v3, v19

    int-to-byte v4, v4

    const/16 v5, 0x348

    int-to-short v5, v5

    aget-byte v6, v3, v31

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4e

    int-to-byte v1, v1

    const/16 v9, 0x102

    int-to-short v4, v9

    const/16 v5, 0x149

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_40

    const/4 v2, 0x2

    :try_start_2d
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v0, v4, v33

    aput-object v1, v4, v23

    aget-byte v0, v3, v18

    int-to-byte v0, v0

    const/16 v1, 0x2eb

    int-to-short v1, v1

    aget-byte v2, v3, v25

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v23

    const-class v2, Ljava/lang/Throwable;

    const/16 v33, 0x1

    aput-object v2, v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_24

    throw v1

    :cond_24
    throw v0

    :catchall_e
    move-exception v0

    move/from16 v40, v6

    .line 2394
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_25

    throw v1

    :cond_25
    throw v0

    :catchall_f
    move-exception v0

    goto :goto_20

    :cond_26
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move-object v1, v12

    move-object/from16 v12, v36

    goto :goto_23

    :catchall_10
    move-exception v0

    goto :goto_1f

    :catchall_11
    move-exception v0

    move-object v7, v1

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v6

    .line 2337
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_27

    throw v1

    :cond_27
    throw v0

    :catchall_12
    move-exception v0

    move-object v7, v1

    :goto_1f
    move/from16 v37, v3

    :goto_20
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    :goto_21
    move/from16 v40, v6

    :goto_22
    move-object/from16 v36, v7

    goto/16 :goto_3a

    :cond_28
    move-object v7, v1

    const/16 v30, 0x24

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v35, 0x0

    :goto_23
    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v6

    const/16 v0, 0x1ade

    .line 2416
    new-array v0, v0, [B

    .line 2417
    const-class v2, Lcom/appsflyer/internal/AFc1fSDK;

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x30d

    aget-byte v4, v3, v4

    const/16 v33, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    const/16 v5, 0x270

    int-to-short v5, v5

    const/16 v6, 0x1d

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    .line 2418
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_40

    const/4 v4, 0x1

    :try_start_2f
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v23

    aget-byte v2, v3, v18

    int-to-byte v4, v2

    const/16 v6, 0x1d3

    int-to-short v6, v6

    int-to-byte v2, v2

    invoke-static {v4, v6, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v3, v18

    int-to-byte v4, v4

    or-int/lit16 v8, v4, 0x3b2

    int-to-short v8, v8

    move-object/from16 v27, v1

    aget-byte v1, v3, v25

    int-to-byte v1, v1

    invoke-static {v4, v8, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v23

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3f

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v5, v2, 0x23

    shl-int/2addr v5, v4

    xor-int/lit8 v2, v2, 0x23

    sub-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v5, v5, 0x2

    .line 2419
    :try_start_30
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v23

    aget-byte v4, v3, v18

    int-to-byte v5, v4

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x17

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v8, 0xb9

    int-to-short v8, v8

    const/16 v36, 0x372

    move-object/from16 v41, v3

    aget-byte v3, v41, v36

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v5, v8, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v7, v8, v23

    invoke-virtual {v4, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_3e

    .line 2420
    :try_start_31
    aget-byte v2, v41, v18

    int-to-byte v3, v2

    int-to-byte v2, v2

    invoke-static {v3, v6, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v41, v16

    int-to-byte v3, v3

    const/16 v4, 0x26c

    int-to-short v4, v4

    aget-byte v5, v41, v31

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3d

    const/16 v32, 0x2

    .line 282
    rem-int v1, v32, v32

    const/16 v1, 0x16

    const/16 v2, 0x1ab0

    move-object/from16 v4, v38

    const/4 v3, 0x0

    :goto_24
    and-int/lit16 v5, v1, 0x9e

    or-int/lit16 v6, v1, 0x9e

    add-int/2addr v5, v6

    add-int/lit16 v6, v1, 0x1ac7

    .line 2432
    :try_start_32
    aget-byte v6, v0, v6

    const/16 v33, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 2437
    array-length v5, v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_40

    sub-int/2addr v5, v1

    const/4 v6, 0x3

    :try_start_33
    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v32, 0x2

    aput-object v5, v8, v32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v33, 0x1

    aput-object v5, v8, v33

    aput-object v0, v8, v23

    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    const/16 v6, 0x7b

    int-to-short v6, v6

    const/16 v36, 0x3e

    move/from16 v41, v1

    aget-byte v1, v0, v36

    int-to-byte v1, v1

    invoke-static {v5, v6, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Class;

    aput-object v7, v5, v23

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v6, v5, v33

    const/16 v32, 0x2

    aput-object v6, v5, v32

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Ljava/io/InputStream;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_3b

    .line 2443
    :try_start_34
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    if-nez v1, :cond_29

    .line 2447
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const v5, -0x3aa8f165

    add-int/2addr v1, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    rsub-int/lit8 v8, v5, 0x4

    int-to-short v5, v8

    move-object v6, v4

    move/from16 v47, v5

    .line 3088
    sget-wide v4, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_40

    const/16 v8, 0x20

    move-object/from16 v49, v6

    move-object/from16 v36, v7

    ushr-long v6, v4, v8

    long-to-int v7, v6

    and-int v6, v7, v1

    not-int v6, v6

    or-int/2addr v7, v1

    and-int/2addr v6, v7

    long-to-int v5, v4

    not-int v4, v1

    and-int/2addr v4, v5

    not-int v5, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    :try_start_35
    filled-new-array {v6, v1}, [I

    move-result-object v44

    .line 3094
    new-instance v42, Lcom/appsflyer/internal/AFj1sSDK;

    sget v45, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    sget-object v46, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    sget v48, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    invoke-direct/range {v42 .. v48}, Lcom/appsflyer/internal/AFj1sSDK;-><init>(Ljava/io/InputStream;[II[BII)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3a

    const/16 v32, 0x2

    .line 282
    rem-int v1, v32, v32

    move-object/from16 v1, v42

    const/4 v7, 0x4

    const/16 v32, 0x2

    move/from16 v42, v2

    goto/16 :goto_25

    :cond_29
    move-object/from16 v49, v4

    move-object/from16 v36, v7

    .line 2454
    :try_start_36
    const-string v4, ""

    const-string v5, ""
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_3a

    const/4 v6, 0x4

    :try_start_37
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v29, 0x3

    aput-object v6, v7, v29

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v32, 0x2

    aput-object v6, v7, v32

    const/16 v33, 0x1

    aput-object v5, v7, v33

    aput-object v4, v7, v23

    aget-byte v4, v0, v21

    int-to-byte v4, v4

    const/16 v5, 0x2fd

    int-to-short v5, v5

    const/16 v6, 0xc

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xc

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0xeb

    int-to-short v6, v6

    const/16 v8, 0x31a

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v8, v23

    const/16 v33, 0x1

    aput-object v6, v8, v33

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v32, 0x2

    aput-object v6, v8, v32

    const/16 v29, 0x3

    aput-object v6, v8, v29

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_39

    neg-int v4, v4

    neg-int v4, v4

    not-int v4, v4

    const v5, -0xc33596

    sub-int/2addr v5, v4

    .line 3755
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v6, v4, 0x5b

    and-int/lit8 v4, v4, 0x5b

    const/16 v33, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/16 v32, 0x2

    rem-int/lit8 v6, v6, 0x2

    const/4 v6, 0x3

    .line 2454
    :try_start_38
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v32

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v33, 0x1

    aput-object v6, v4, v33

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v23

    aget-byte v6, v0, v21

    int-to-byte v6, v6

    const/16 v7, 0x34c

    int-to-short v7, v7

    aget-byte v8, v0, v18

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v0, v16

    int-to-byte v7, v7

    const/16 v8, 0x338

    int-to-short v8, v8

    move/from16 v42, v2

    aget-byte v2, v0, v30

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v23

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v7, v8, v33

    const/16 v32, 0x2

    aput-object v7, v8, v32

    invoke-virtual {v6, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    neg-int v2, v2

    xor-int/lit8 v4, v2, 0x1

    const/16 v33, 0x1

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    const/4 v6, 0x4

    :try_start_39
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v29, 0x3

    aput-object v4, v2, v29

    const/16 v32, 0x2

    const/16 v34, 0x0

    aput-object v34, v2, v32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v33, 0x1

    aput-object v4, v2, v33

    aput-object v43, v2, v23

    aget-byte v4, v0, v16

    int-to-byte v4, v4

    const/16 v5, 0x20b

    int-to-short v5, v5

    aget-byte v6, v0, v17

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x2c6

    and-int/lit16 v7, v5, 0x2c6

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x31a

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    aget-byte v6, v0, v18

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x3b2

    and-int/lit16 v8, v6, 0x3b2

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, v0, v25

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v6, v8, v23

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v6, v8, v33

    const/16 v32, 0x2

    aput-object v36, v8, v32

    const/16 v29, 0x3

    aput-object v6, v8, v29

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_37

    .line 282
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/16 v32, 0x2

    rem-int/lit8 v2, v2, 0x2

    rem-int v2, v32, v32

    :goto_25
    const/16 v2, 0x10

    int-to-long v4, v2

    .line 3755
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v2, v2, 0x2

    .line 2457
    :try_start_3a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v23

    aget-byte v2, v0, v18

    int-to-byte v2, v2

    xor-int/lit16 v4, v2, 0x3b2

    and-int/lit16 v6, v2, 0x3b2

    or-int/2addr v4, v6

    int-to-short v4, v4

    aget-byte v6, v0, v25

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x47

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v6, 0x22b

    int-to-short v6, v6

    const/16 v8, 0x312

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v8, v23

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_36

    if-eqz v9, :cond_40

    .line 2463
    :try_start_3b
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3a

    if-nez v2, :cond_2a

    const/16 v32, 0x2

    .line 282
    rem-int v4, v32, v32

    move-object v4, v12

    goto :goto_26

    :cond_2a
    move-object/from16 v4, v27

    :goto_26
    if-nez v2, :cond_2b

    move-object v2, v14

    goto :goto_27

    :cond_2b
    move-object/from16 v2, v35

    .line 3755
    :goto_27
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v5, v5, 0x19

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v5, v5, 0x2

    const/4 v5, 0x1

    .line 3603
    :try_start_3c
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v23

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    xor-int/lit16 v8, v5, 0x2c0

    and-int/lit16 v7, v5, 0x2c0

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, v0, v22

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v0, v18
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_21

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x320

    move/from16 v43, v8

    and-int/lit16 v8, v7, 0x320

    or-int v8, v43, v8

    int-to-short v8, v8

    move-object/from16 v43, v10

    :try_start_3d
    aget-byte v10, v0, v20

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v7, v10, v23

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    if-eqz v37, :cond_2e

    .line 2500
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v7, v6, 0x2d

    and-int/lit8 v6, v6, 0x2d

    const/16 v33, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2d

    .line 3609
    :try_start_3e
    aget-byte v6, v0, v18

    int-to-byte v6, v6

    or-int/lit16 v7, v6, 0x320

    int-to-short v7, v7

    aget-byte v8, v0, v20

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x47

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    const/16 v8, 0x1c9

    int-to-short v8, v8

    const/16 v10, 0x1a3

    aget-byte v0, v0, v10

    int-to-byte v0, v0

    invoke-static {v7, v8, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_13

    goto :goto_28

    :catchall_13
    move-exception v0

    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2c

    throw v1

    :cond_2c
    throw v0

    :cond_2d
    const/16 v34, 0x0

    throw v34
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_a
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    :catch_a
    move-exception v0

    move-object/from16 v47, v11

    goto/16 :goto_2d

    :cond_2e
    :goto_28
    const/16 v0, 0x400

    .line 3616
    :try_start_40
    new-array v6, v0, [B
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1f

    move/from16 v7, v42

    :goto_29
    if-lez v7, :cond_31

    .line 3755
    sget v8, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v10, v8, 0x7d

    or-int/lit8 v8, v8, 0x7d

    add-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v10, v10, 0x2

    .line 3619
    :try_start_41
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1f

    move-object/from16 v42, v6

    const/4 v10, 0x3

    :try_start_42
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v32

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v33, 0x1

    aput-object v8, v6, v33

    aput-object v42, v6, v23

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v10, v8, v18

    int-to-byte v10, v10

    move/from16 v44, v7

    xor-int/lit16 v7, v10, 0x3b2

    move/from16 v45, v7

    and-int/lit16 v7, v10, 0x3b2

    or-int v7, v45, v7

    int-to-short v7, v7

    move-object/from16 v45, v8

    aget-byte v8, v45, v25

    int-to-byte v8, v8

    invoke-static {v10, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x17

    aget-byte v8, v45, v8
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_16

    int-to-byte v8, v8

    xor-int/lit16 v10, v8, 0xfa

    move/from16 v46, v10

    and-int/lit16 v10, v8, 0xfa

    or-int v10, v46, v10

    int-to-short v10, v10

    const/16 v46, 0x312

    move-object/from16 v47, v11

    :try_start_43
    aget-byte v11, v45, v46

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v36, v11, v23

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v10, v11, v33

    const/16 v32, 0x2

    aput-object v10, v11, v32

    invoke-virtual {v7, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_15

    const/4 v8, -0x1

    if-eq v7, v8, :cond_32

    .line 2500
    sget v8, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v10, v8, 0x7

    const/16 v33, 0x1

    shl-int/lit8 v10, v10, 0x1

    xor-int/lit8 v8, v8, 0x7

    sub-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v10, v10, 0x2

    const/4 v10, 0x3

    .line 3622
    :try_start_44
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v32

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v33, 0x1

    aput-object v6, v8, v33

    aput-object v42, v8, v23

    aget-byte v6, v45, v18

    int-to-byte v6, v6

    xor-int/lit16 v10, v6, 0x2c0

    and-int/lit16 v11, v6, 0x2c0

    or-int/2addr v10, v11

    int-to-short v10, v10

    aget-byte v11, v45, v22

    int-to-byte v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v10, 0x43

    aget-byte v10, v45, v10

    int-to-byte v10, v10

    xor-int/lit16 v11, v10, 0xf1

    move/from16 v46, v11

    and-int/lit16 v11, v10, 0xf1

    or-int v11, v46, v11

    int-to-short v11, v11

    move-object/from16 v46, v12

    aget-byte v12, v45, v31

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v36, v12, v23

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v11, v12, v33

    const/16 v32, 0x2

    aput-object v11, v12, v32

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_14

    neg-int v6, v7

    not-int v6, v6

    sub-int v7, v44, v6

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v6, v42

    move-object/from16 v12, v46

    move-object/from16 v11, v47

    goto/16 :goto_29

    :catchall_14
    move-exception v0

    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2f

    throw v1

    :cond_2f
    throw v0

    :catchall_15
    move-exception v0

    goto :goto_2a

    :catchall_16
    move-exception v0

    move-object/from16 v47, v11

    .line 3619
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_30

    throw v1

    :cond_30
    throw v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_22

    :cond_31
    move-object/from16 v47, v11

    :cond_32
    move-object/from16 v46, v12

    .line 3628
    :try_start_46
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v1, v0, v18

    int-to-byte v1, v1

    xor-int/lit16 v6, v1, 0x2c0

    and-int/lit16 v7, v1, 0x2c0

    or-int/2addr v6, v7

    int-to-short v6, v6

    aget-byte v7, v0, v22

    int-to-byte v7, v7

    invoke-static {v1, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v6, v0, v26

    int-to-byte v6, v6

    const/16 v7, 0x24a

    int-to-short v7, v7

    aget-byte v8, v0, v31

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1e

    :try_start_47
    aget-byte v6, v0, v18

    int-to-byte v6, v6

    const/16 v7, 0x372

    int-to-short v7, v7

    const/16 v8, 0xc

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x47

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x148

    and-int/lit16 v10, v7, 0x148

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/16 v10, 0x312

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1d

    const/16 v32, 0x2

    .line 282
    rem-int v12, v32, v32

    .line 3629
    :try_start_48
    aget-byte v1, v0, v18

    int-to-byte v1, v1

    or-int/lit16 v6, v1, 0x2c0

    int-to-short v6, v6

    aget-byte v7, v0, v22

    int-to-byte v7, v7

    invoke-static {v1, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v6, v0, v16

    int-to-byte v6, v6

    const/16 v7, 0x26c

    int-to-short v7, v7

    aget-byte v8, v0, v31

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1c

    .line 3641
    :try_start_49
    aget-byte v1, v0, v30

    neg-int v1, v1

    int-to-byte v1, v1

    const/16 v5, 0x102

    int-to-short v6, v5

    const/16 v5, 0xba

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    invoke-static {v1, v6, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v5, 0x6a

    .line 3642
    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x1e9

    int-to-short v6, v6

    const/16 v7, 0x31a

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v7, v23

    const/16 v33, 0x1

    aput-object v6, v7, v33

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v32, 0x2

    aput-object v6, v7, v32

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_22

    .line 3646
    :try_start_4a
    aget-byte v5, v0, v18

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0x320

    int-to-short v6, v6

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v0, v26

    int-to-byte v6, v6

    const/16 v7, 0x2a0

    int-to-short v7, v7

    const/16 v8, 0xf

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1b

    .line 3755
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v6, v6, 0x25

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v6, v6, 0x2

    .line 3646
    :try_start_4b
    aget-byte v6, v0, v18

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x320

    and-int/lit16 v10, v6, 0x320

    or-int/2addr v8, v10

    int-to-short v8, v8

    aget-byte v10, v0, v20

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v8, v0, v26

    int-to-byte v8, v8

    const/16 v10, 0xf

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    invoke-static {v8, v7, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1a

    .line 3649
    :try_start_4c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v23

    const/16 v33, 0x1

    aput-object v6, v8, v33

    const/16 v32, 0x2

    aput-object v7, v8, v32

    const/4 v12, 0x0

    .line 3646
    invoke-virtual {v1, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_22

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v5, v5, 0x21

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v5, v5, 0x2

    .line 3655
    :try_start_4d
    aget-byte v5, v0, v18

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v7, v5, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v0, v30

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x245

    int-to-short v7, v7

    const/16 v8, 0x132

    aget-byte v8, v0, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_19

    .line 3656
    :try_start_4e
    aget-byte v4, v0, v18

    int-to-byte v4, v4

    or-int/lit16 v5, v4, 0x320

    int-to-short v5, v5

    aget-byte v6, v0, v20

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v0, v30

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x132

    aget-byte v6, v0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v5, v7, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_18

    .line 3661
    :try_start_4f
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    if-nez v2, :cond_34

    .line 3663
    const-class v2, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_3c

    :try_start_50
    const-class v4, Ljava/lang/Class;

    aget-byte v5, v0, v26

    int-to-byte v5, v5

    const/16 v6, 0x22e

    int-to-short v6, v6

    aget-byte v0, v0, v21

    int-to-byte v0, v0

    invoke-static {v5, v6, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_17

    :try_start_51
    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    goto :goto_2b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_33

    throw v1

    :cond_33
    throw v0

    :cond_34
    :goto_2b
    const/4 v6, 0x1

    goto/16 :goto_35

    :catchall_18
    move-exception v0

    .line 3656
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_35

    throw v1

    :cond_35
    throw v0

    :catchall_19
    move-exception v0

    .line 3655
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_36

    throw v1

    :cond_36
    throw v0
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_3c

    :catchall_1a
    move-exception v0

    .line 3646
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_37

    throw v1

    :cond_37
    throw v0

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_38

    throw v1

    :cond_38
    throw v0

    :catchall_1c
    move-exception v0

    .line 3629
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_39

    throw v1

    :cond_39
    throw v0

    :catchall_1d
    move-exception v0

    .line 3628
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3a

    throw v1

    :cond_3a
    throw v0

    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    throw v1

    :cond_3b
    throw v0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_22

    :catchall_1f
    move-exception v0

    move-object/from16 v47, v11

    goto/16 :goto_2e

    :catchall_20
    move-exception v0

    goto :goto_2c

    :catchall_21
    move-exception v0

    move-object/from16 v43, v10

    :goto_2c
    move-object/from16 v47, v11

    .line 3603
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3c

    throw v1

    :cond_3c
    throw v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_b
    .catchall {:try_start_53 .. :try_end_53} :catchall_22

    :catchall_22
    move-exception v0

    goto :goto_2e

    :catch_b
    move-exception v0

    .line 3614
    :goto_2d
    :try_start_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v3, v19

    int-to-byte v5, v5

    const/16 v6, 0x198

    int-to-short v6, v6

    aget-byte v7, v3, v31

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x4e

    int-to-byte v5, v5

    const/16 v9, 0x102

    int-to-short v6, v9

    const/16 v7, 0x149

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_22

    const/4 v5, 0x2

    :try_start_55
    new-array v6, v5, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v0, v6, v33

    aput-object v1, v6, v23

    aget-byte v0, v3, v18

    int-to-byte v0, v0

    const/16 v1, 0x2eb

    int-to-short v1, v1

    aget-byte v3, v3, v25

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v23

    const-class v3, Ljava/lang/Throwable;

    const/16 v33, 0x1

    aput-object v3, v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_23

    :catchall_23
    move-exception v0

    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3d

    throw v1

    :cond_3d
    throw v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_22

    .line 3655
    :goto_2e
    :try_start_57
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v3, v1, v18

    int-to-byte v3, v3

    xor-int/lit16 v5, v3, 0x320

    and-int/lit16 v6, v3, 0x320

    or-int/2addr v5, v6

    int-to-short v5, v5

    aget-byte v6, v1, v20

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v5, v1, v30

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x245

    int-to-short v6, v6

    const/16 v7, 0x132

    aget-byte v7, v1, v7

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v3, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_25

    .line 3656
    :try_start_58
    aget-byte v3, v1, v18

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x320

    and-int/lit16 v5, v3, 0x320

    or-int/2addr v4, v5

    int-to-short v4, v4

    aget-byte v5, v1, v20

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v1, v30

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x132

    aget-byte v1, v1, v5

    neg-int v1, v1

    int-to-byte v1, v1

    invoke-static {v4, v6, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_24

    .line 3657
    :try_start_59
    throw v0

    :catchall_24
    move-exception v0

    .line 3656
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3e

    throw v1

    :cond_3e
    throw v0

    :catchall_25
    move-exception v0

    .line 3655
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3f

    throw v1

    :cond_3f
    throw v0

    :cond_40
    move-object/from16 v43, v10

    move-object/from16 v47, v11

    move-object/from16 v46, v12

    .line 3679
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3680
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_3c

    const/4 v4, 0x1

    .line 3682
    :try_start_5a
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v23

    aget-byte v2, v0, v18

    int-to-byte v2, v2

    aget-byte v4, v0, v20

    int-to-short v4, v4

    const/16 v6, 0x77

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v0, v18

    int-to-byte v4, v4

    xor-int/lit16 v6, v4, 0x3b2

    and-int/lit16 v7, v4, 0x3b2

    or-int/2addr v6, v7

    int-to-short v6, v6

    aget-byte v7, v0, v25

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v4, v7, v23

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_35

    const/16 v32, 0x2

    .line 282
    rem-int v12, v32, v32

    .line 3682
    :try_start_5b
    aget-byte v4, v0, v18

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x1e2

    and-int/lit16 v6, v4, 0x1e2

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x42

    aget-byte v0, v0, v6

    int-to-byte v0, v0

    invoke-static {v4, v5, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_34

    const/16 v0, 0x400

    .line 3685
    :try_start_5c
    new-array v0, v0, [B
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_3c

    const/4 v5, 0x0

    :goto_2f
    const/4 v6, 0x1

    .line 3688
    :try_start_5d
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v23

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v8, v6, v18

    int-to-byte v8, v8

    aget-byte v10, v6, v20

    int-to-short v10, v10

    const/16 v11, 0x77

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x17

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    xor-int/lit16 v11, v10, 0xfa

    and-int/lit16 v12, v10, 0xfa

    or-int/2addr v11, v12

    int-to-short v11, v11

    const/16 v12, 0x312

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v36, v12, v23

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_33

    if-lez v8, :cond_42

    int-to-long v10, v5

    .line 3689
    :try_start_5e
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v44
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_28

    cmp-long v12, v10, v44

    if-gez v12, :cond_42

    const/4 v10, 0x3

    .line 3691
    :try_start_5f
    new-array v11, v10, [Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_27

    const/16 v32, 0x2

    :try_start_60
    aput-object v7, v11, v32

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v33, 0x1

    aput-object v7, v11, v33

    aput-object v0, v11, v23

    aget-byte v7, v6, v18

    int-to-byte v7, v7

    xor-int/lit16 v10, v7, 0x1e2

    and-int/lit16 v12, v7, 0x1e2

    or-int/2addr v10, v12

    int-to-short v10, v10

    const/16 v12, 0x42

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    invoke-static {v7, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v10, 0x43

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    or-int/lit16 v12, v10, 0xf1

    int-to-short v12, v12

    aget-byte v6, v6, v31

    int-to-byte v6, v6

    invoke-static {v10, v12, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_26

    const/4 v10, 0x3

    :try_start_61
    new-array v12, v10, [Ljava/lang/Class;

    aput-object v36, v12, v23

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v29, v12, v33

    const/16 v32, 0x2

    aput-object v29, v12, v32

    invoke-virtual {v7, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_27

    neg-int v6, v8

    neg-int v6, v6

    xor-int v7, v5, v6

    and-int/2addr v5, v6

    const/16 v33, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    goto/16 :goto_2f

    :catchall_26
    move-exception v0

    const/4 v10, 0x3

    goto :goto_30

    :catchall_27
    move-exception v0

    :goto_30
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_41

    throw v1

    :cond_41
    throw v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3c

    :catchall_28
    move-exception v0

    const/4 v10, 0x3

    goto/16 :goto_3b

    :cond_42
    const/4 v10, 0x3

    .line 3694
    :try_start_63
    aget-byte v0, v6, v18

    int-to-byte v0, v0

    xor-int/lit16 v1, v0, 0x1e2

    and-int/lit16 v5, v0, 0x1e2

    or-int/2addr v1, v5

    int-to-short v1, v1

    const/16 v5, 0x42

    aget-byte v5, v6, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v1, v6, v17

    int-to-byte v1, v1

    xor-int/lit16 v5, v1, 0x384

    and-int/lit16 v7, v1, 0x384

    or-int/2addr v5, v7

    int-to-short v5, v5

    const/16 v7, 0x1a3

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    invoke-static {v1, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_32

    .line 3698
    :try_start_64
    aget-byte v0, v6, v18

    int-to-byte v0, v0

    aget-byte v5, v6, v20

    int-to-short v5, v5

    const/16 v7, 0x77

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    invoke-static {v0, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v5, v6, v16

    int-to-byte v5, v5

    const/16 v7, 0x26c

    int-to-short v7, v7

    aget-byte v6, v6, v31

    int-to-byte v6, v6

    invoke-static {v5, v7, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_29

    goto :goto_31

    :catchall_29
    move-exception v0

    :try_start_65
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_43

    throw v2

    :cond_43
    throw v0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_65} :catch_c
    .catchall {:try_start_65 .. :try_end_65} :catchall_3c

    .line 3755
    :catch_c
    :goto_31
    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v0, v0, 0x2

    .line 3704
    :try_start_66
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v0, v18

    int-to-byte v2, v2

    xor-int/lit16 v5, v2, 0x1e2

    and-int/lit16 v6, v2, 0x1e2

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x42

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v5, v0, v16

    int-to-byte v5, v5

    const/16 v6, 0x26c

    int-to-short v6, v6

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    invoke-static {v5, v6, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2a

    goto :goto_32

    :catchall_2a
    move-exception v0

    :try_start_67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_44

    throw v2

    :cond_44
    throw v0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_67} :catch_d
    .catchall {:try_start_67 .. :try_end_67} :catchall_3c

    .line 3708
    :catch_d
    :goto_32
    :try_start_68
    const-class v0, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_3c

    :try_start_69
    const-class v2, Ljava/lang/Class;

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v5, v4, v26

    int-to-byte v5, v5

    const/16 v6, 0x22e

    int-to-short v6, v6

    aget-byte v7, v4, v21

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v2, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_31

    .line 3713
    :try_start_6a
    aget-byte v0, v4, v30

    neg-int v0, v0

    int-to-byte v0, v0

    const/16 v5, 0x96

    int-to-short v5, v5

    const/16 v6, 0x43

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {v0, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3714
    aget-byte v5, v4, v18

    int-to-byte v5, v5

    const/16 v6, 0x52

    int-to-short v6, v6

    aget-byte v7, v4, v25

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v4, v18

    int-to-byte v7, v7

    const/16 v8, 0x1a0

    int-to-short v8, v8

    const/16 v11, 0xba

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Class;

    aput-object v5, v11, v23

    const/4 v5, 0x1

    aput-object v7, v11, v5

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_3c

    .line 3716
    :try_start_6b
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v23

    aget-byte v1, v4, v18

    int-to-byte v1, v1

    aget-byte v5, v4, v25

    int-to-byte v5, v5

    invoke-static {v1, v6, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v5, 0x43

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x3a5

    and-int/lit16 v8, v5, 0x3a5

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/16 v8, 0x312

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v36, v8, v23

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_30

    const/4 v5, 0x2

    :try_start_6c
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v23

    const/16 v33, 0x1

    aput-object v2, v6, v33

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_3c

    .line 3729
    :try_start_6d
    aget-byte v0, v4, v30

    neg-int v0, v0

    int-to-byte v0, v0

    or-int/lit16 v5, v0, 0x10c

    int-to-short v5, v5

    const/16 v6, 0x47

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {v0, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v5, 0x42

    .line 3730
    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x312

    int-to-short v6, v6

    const/16 v7, 0x2c

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v6, 0x1

    .line 3731
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3733
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3734
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x77

    .line 3736
    aget-byte v7, v4, v7

    int-to-byte v7, v7

    const/16 v8, 0x3a8

    int-to-short v8, v8

    aget-byte v11, v4, v22

    int-to-byte v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    .line 3737
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v8, 0x77

    .line 3739
    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v11, 0x254

    int-to-short v11, v11

    const/16 v12, 0x6a

    aget-byte v4, v4, v12

    int-to-byte v4, v4

    invoke-static {v8, v11, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x1

    .line 3740
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3742
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3743
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3745
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3748
    new-instance v8, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/List;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3750
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 3751
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 3753
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .line 3754
    invoke-static {v6, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_10
    .catchall {:try_start_6d .. :try_end_6d} :catchall_3c

    const/4 v12, 0x0

    :goto_33
    if-ge v12, v11, :cond_46

    .line 3609
    sget v29, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v42, v29, 0x55

    and-int/lit8 v29, v29, 0x55

    const/16 v33, 0x1

    shl-int/lit8 v29, v29, 0x1

    add-int v10, v42, v29

    move-object/from16 v29, v1

    rem-int/lit16 v1, v10, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/16 v32, 0x2

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_45

    .line 3757
    :try_start_6e
    invoke-static {v5, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v12, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    and-int/lit8 v1, v12, 0x2c

    or-int/lit8 v10, v12, 0x2c

    add-int/2addr v1, v10

    add-int/lit8 v12, v1, 0x3c

    goto :goto_34

    :cond_45
    invoke-static {v5, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v12, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int/lit8 v1, v12, 0x66

    const/16 v33, 0x1

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v10, v12, 0x66

    sub-int/2addr v1, v10

    add-int/lit8 v12, v1, -0x65

    :goto_34
    move-object/from16 v1, v29

    const/4 v10, 0x3

    goto :goto_33

    :cond_46
    move-object/from16 v29, v1

    .line 3760
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3761
    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_10
    .catchall {:try_start_6e .. :try_end_6e} :catchall_3c

    .line 3771
    :try_start_6f
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_3c

    if-nez v0, :cond_47

    .line 2500
    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    const/16 v33, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v1, v1, 0x2

    .line 3773
    :try_start_70
    sput-object v29, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    :cond_47
    move-object/from16 v1, v29

    goto/16 :goto_2b

    :goto_35
    if-eq v9, v6, :cond_48

    .line 2507
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v0, v18

    int-to-byte v2, v2

    const/16 v4, 0x1a0

    int-to-short v4, v4

    const/16 v5, 0xba

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x6a

    .line 2508
    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x391

    int-to-short v5, v5

    const/16 v6, 0x372

    aget-byte v0, v0, v6

    neg-int v0, v0

    int-to-byte v0, v0

    invoke-static {v4, v5, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v23

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_3c

    .line 2512
    :try_start_71
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2513
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v49, v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_71 .. :try_end_71} :catch_e
    .catchall {:try_start_71 .. :try_end_71} :catchall_3c

    goto/16 :goto_38

    :catch_e
    move-exception v0

    .line 2520
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_72 .. :try_end_72} :catch_f
    .catchall {:try_start_72 .. :try_end_72} :catchall_3c

    :catch_f
    nop

    const/4 v0, 0x0

    goto/16 :goto_38

    .line 2483
    :cond_48
    :try_start_73
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v0, v30

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v5, 0x102

    int-to-short v4, v5

    const/16 v5, 0xba

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x6a

    .line 2484
    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x391

    int-to-short v5, v5

    const/16 v6, 0x372

    aget-byte v6, v0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    const/16 v6, 0x1a0

    int-to-short v6, v6

    const/16 v7, 0xba

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v23

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2487
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2488
    const-class v5, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_3c

    :try_start_74
    const-class v6, Ljava/lang/Class;

    aget-byte v7, v0, v26

    int-to-byte v7, v7

    const/16 v8, 0x22e

    int-to-short v8, v8

    aget-byte v10, v0, v21

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_2e

    const/4 v8, 0x2

    :try_start_75
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v49, v6, v23

    const/16 v33, 0x1

    aput-object v5, v6, v33

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3c

    if-eqz v4, :cond_4a

    .line 282
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v5, v5, 0x59

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_49

    const/16 v5, 0x3ce9

    .line 2499
    :try_start_76
    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x4029

    int-to-short v6, v6

    const/16 v7, 0x3ecb

    aget-byte v0, v0, v7

    int-to-byte v0, v0

    invoke-static {v5, v6, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v12, 0x0

    .line 2500
    :goto_36
    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 2499
    :cond_49
    aget-byte v5, v0, v16

    int-to-byte v5, v5

    const/16 v6, 0x26c

    int-to-short v6, v6

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    invoke-static {v5, v6, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3c

    goto :goto_36

    :cond_4a
    :goto_37
    move-object v0, v4

    :goto_38
    if-eqz v0, :cond_4f

    .line 3755
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v2, v2, 0x2

    .line 2531
    :try_start_77
    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    .line 2536
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v0, v16

    int-to-byte v2, v2

    const/16 v4, 0xc1

    int-to-short v5, v4

    aget-byte v4, v0, v17

    int-to-byte v4, v4

    invoke-static {v2, v5, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    .line 2541
    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v5, v23

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 2542
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2543
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3c

    if-nez v9, :cond_4b

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v6, v5, 0x3b

    or-int/lit8 v5, v5, 0x3b

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    const/4 v6, 0x1

    goto :goto_39

    :cond_4b
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 2544
    :goto_39
    :try_start_78
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v23

    const/16 v33, 0x1

    aput-object v6, v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v1, 0x1bde

    .line 2553
    new-array v1, v1, [B

    .line 2554
    const-class v2, Lcom/appsflyer/internal/AFc1fSDK;

    const/16 v5, 0x30d

    aget-byte v5, v0, v5

    or-int/lit8 v6, v5, 0x1

    const/16 v33, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    sub-int/2addr v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x2e

    aget-byte v6, v0, v6

    int-to-short v6, v6

    const/16 v7, 0x1d

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    .line 2555
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_3c

    .line 2500
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v6, v5, 0x5

    and-int/lit8 v5, v5, 0x5

    const/4 v8, 0x1

    shl-int/2addr v5, v8

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v6, v6, 0x2

    .line 2555
    :try_start_79
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v23

    aget-byte v2, v0, v18

    int-to-byte v6, v2

    const/16 v7, 0x1d3

    int-to-short v7, v7

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v6, v0, v18

    int-to-byte v6, v6

    or-int/lit16 v8, v6, 0x3b2

    int-to-short v8, v8

    aget-byte v10, v0, v25

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v6, v10, v23

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_2d

    .line 2557
    :try_start_7a
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v23

    aget-byte v6, v0, v18

    int-to-byte v8, v6

    int-to-byte v6, v6

    invoke-static {v8, v7, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x17

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    const/16 v10, 0xb9

    int-to-short v10, v10

    const/16 v11, 0x372

    aget-byte v11, v0, v11

    neg-int v11, v11

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v36, v10, v23

    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2c

    .line 2558
    :try_start_7b
    aget-byte v5, v0, v18

    int-to-byte v6, v5

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v0, v16

    int-to-byte v6, v6

    const/16 v7, 0x26c

    int-to-short v7, v7

    const/16 v31, 0xc1

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    invoke-static {v6, v7, v0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v5, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2b

    .line 2562
    :try_start_7c
    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x1bb1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    move-object/from16 v7, v36

    move-object/from16 v10, v43

    move-object/from16 v12, v46

    move-object/from16 v11, v47

    const/16 v28, 0x4

    const/16 v31, 0xc1

    goto/16 :goto_24

    :catchall_2b
    move-exception v0

    .line 2558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4c

    throw v1

    :cond_4c
    throw v0

    :catchall_2c
    move-exception v0

    .line 2557
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4d

    throw v1

    :cond_4d
    throw v0

    :catchall_2d
    move-exception v0

    .line 2555
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4e

    throw v1

    :cond_4e
    throw v0

    :cond_4f
    const/4 v2, 0x2

    .line 2567
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v23

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    .line 2568
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2569
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v2, v9, 0x1

    .line 2570
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v23

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3c

    .line 282
    rem-int v12, v4, v4

    const/4 v2, 0x7

    const/4 v6, 0x1

    const/16 v34, 0x0

    goto/16 :goto_3e

    :catchall_2e
    move-exception v0

    .line 2488
    :try_start_7d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_50

    throw v1

    :cond_50
    throw v0

    :catch_10
    move-exception v0

    .line 3767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v3, v19

    int-to-byte v4, v4

    const/16 v5, 0x19c

    int-to-short v5, v5

    const/16 v31, 0xc1

    aget-byte v6, v3, v31

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4e

    int-to-byte v2, v2

    const/16 v9, 0x102

    int-to-short v4, v9

    const/16 v5, 0x149

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3c

    const/4 v2, 0x2

    :try_start_7e
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v0, v4, v33

    aput-object v1, v4, v23

    aget-byte v0, v3, v18

    int-to-byte v0, v0

    const/16 v1, 0x2eb

    int-to-short v1, v1

    aget-byte v2, v3, v25

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v23

    const-class v2, Ljava/lang/Throwable;

    const/16 v33, 0x1

    aput-object v2, v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2f

    :catchall_2f
    move-exception v0

    :try_start_7f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_51

    throw v1

    :cond_51
    throw v0

    :catchall_30
    move-exception v0

    .line 3716
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_52

    throw v1

    :cond_52
    throw v0

    :catchall_31
    move-exception v0

    .line 3708
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    throw v1

    :cond_53
    throw v0

    :catchall_32
    move-exception v0

    .line 3694
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_54

    throw v1

    :cond_54
    throw v0

    :catchall_33
    move-exception v0

    .line 3688
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_55

    throw v1

    :cond_55
    throw v0

    :catchall_34
    move-exception v0

    .line 3682
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_56

    throw v1

    :cond_56
    throw v0

    :catchall_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_57

    throw v1

    :cond_57
    throw v0

    :catchall_36
    move-exception v0

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2457
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_58

    throw v1

    :cond_58
    throw v0

    :catchall_37
    move-exception v0

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2454
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    throw v1

    :cond_59
    throw v0

    :catchall_38
    move-exception v0

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5a

    throw v1

    :cond_5a
    throw v0

    :catchall_39
    move-exception v0

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5b

    throw v1

    :cond_5b
    throw v0

    :catchall_3a
    move-exception v0

    goto :goto_3a

    :catchall_3b
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2437
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5c

    throw v1

    :cond_5c
    throw v0

    :catchall_3c
    move-exception v0

    goto :goto_3b

    :catchall_3d
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2420
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5d

    throw v1

    :cond_5d
    throw v0

    :catchall_3e
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2419
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5e

    throw v1

    :cond_5e
    throw v0

    :catchall_3f
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    .line 2418
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5f

    throw v1

    :cond_5f
    throw v0
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3c

    :catchall_40
    move-exception v0

    goto/16 :goto_22

    :catchall_41
    move-exception v0

    move-object/from16 v36, v1

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v6

    :goto_3a
    move-object/from16 v43, v10

    move-object/from16 v47, v11

    :goto_3b
    add-int/lit8 v1, v13, 0x1

    const/4 v2, 0x7

    :goto_3c
    if-ge v1, v2, :cond_61

    .line 256
    :try_start_80
    aget-boolean v3, v15, v1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_11

    if-eqz v3, :cond_60

    .line 2500
    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v1, v0, 0x17

    const/16 v33, 0x1

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x17

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/16 v32, 0x2

    rem-int/lit8 v1, v1, 0x2

    const/16 v34, 0x0

    .line 271
    :try_start_81
    sput-object v34, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    .line 272
    sput-object v34, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    goto :goto_3d

    :cond_60
    const/16 v34, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 266
    :cond_61
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v2, v1, v19

    int-to-byte v2, v2

    const/16 v3, 0x15e

    int-to-short v3, v3

    aget-byte v4, v1, v18

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_11

    const/4 v4, 0x2

    :try_start_82
    new-array v3, v4, [Ljava/lang/Object;

    const/16 v33, 0x1

    aput-object v0, v3, v33

    aput-object v2, v3, v23

    aget-byte v0, v1, v18

    int-to-byte v0, v0

    const/16 v2, 0x2eb

    int-to-short v2, v2

    aget-byte v1, v1, v25

    int-to-byte v1, v1

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v23

    const-class v2, Ljava/lang/Throwable;

    const/16 v33, 0x1

    aput-object v2, v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_42

    :catchall_42
    move-exception v0

    :try_start_83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_62

    throw v1

    :cond_62
    throw v0

    :cond_63
    move-object/from16 v36, v1

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v6

    move-object/from16 v34, v7

    move-object/from16 v43, v10

    move-object/from16 v47, v11

    const/4 v2, 0x7

    const/16 v26, 0x15

    :goto_3d
    const/4 v4, 0x2

    move/from16 v6, v40

    :goto_3e
    xor-int/lit8 v0, v13, 0x6d

    and-int/lit8 v1, v13, 0x6d

    const/16 v33, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    or-int/lit8 v1, v0, -0x6c

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, -0x6c

    sub-int v13, v1, v0

    move-object/from16 v7, v34

    move-object/from16 v1, v36

    move/from16 v3, v37

    move-object/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v10, v43

    move-object/from16 v11, v47

    const/4 v2, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x15

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/16 v24, 0x7

    goto/16 :goto_10

    :cond_64
    :goto_3f
    return-void

    :catchall_43
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_65

    throw v1

    :cond_65
    throw v0

    :catchall_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_66

    throw v1

    :cond_66
    throw v0

    :catchall_45
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_67

    throw v1

    :cond_67
    throw v0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_11

    :catch_11
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        -0x30t
        -0x36t
        0x39t
        -0x1t
        -0x6ct
        -0x6t
        -0x8t
        -0x63t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(I)I
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v2, v1, 0xd

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v1, 0xd

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    or-int/lit8 v4, v1, 0x7d

    shl-int/2addr v4, v3

    xor-int/lit8 v1, v1, 0x7d

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    and-int/lit8 v4, v1, 0x4b

    or-int/lit8 v1, v1, 0x4b

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v4, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v6, p0, v5

    int-to-byte v6, v6

    const/16 v7, 0x20b

    int-to-short v7, v7

    const/4 v8, 0x6

    aget-byte v8, p0, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ClassLoader;

    invoke-static {v6, v3, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xb0

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    const/16 v8, 0x14f

    int-to-short v8, v8

    aget-byte p0, p0, v5

    int-to-byte p0, p0

    invoke-static {v7, v8, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v6, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v2, v1, 0x2f

    or-int/lit8 v1, v1, 0x2f

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/16 v0, 0x54

    div-int/2addr v0, v4

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static AFInAppEventType(ICI)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v4, 0x12

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v4, v2, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    or-int/lit8 v4, v2, 0x1d

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    xor-int/lit8 v2, v2, 0x1d

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    const/4 v2, 0x3

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 p1, 0xe1

    aget-byte p1, p0, p1

    int-to-byte p1, p1

    const/16 p2, 0x20b

    int-to-short p2, p2

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v5, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0xa

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    xor-int/lit16 v6, p2, 0x2c6

    and-int/lit16 v7, p2, 0x2c6

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x31a

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {p2, v6, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v3

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, p2, v5

    aput-object v2, p2, v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 p2, p1, 0x2b

    or-int/lit8 p1, p1, 0x2b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Object;)I
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    or-int/lit8 v2, v1, 0x71

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v1, 0x71

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x5b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v1, v0

    :try_start_0
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x20b

    int-to-short v6, v6

    const/4 v7, 0x6

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xa

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x2c6

    and-int/lit16 v8, v6, 0x2c6

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x31a

    aget-byte p0, p0, v8

    int-to-byte p0, p0

    invoke-static {v6, v7, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v2, v1, 0x39

    and-int/lit8 v1, v1, 0x39

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v2, v0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method static init$0()V
    .locals 6

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v1, v0

    const-string v2, "ISO-8859-1"

    const-string v3, "1_\u00a3K\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cc8\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ce\u0010\u0001\u0002\u00f4\u000e\u0002\u001c\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00dc\u00db\u0007\u0000\u0010\u00f9\u00ef\u0004\u0001\u000e\u00f8\u00fb4\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c1\u0006\u00fbB\u00ed\u00ca\u0006\u0010$\u00ce\u0010\u0001\u0002\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00c0\u00fdF\u00ed\u00ce\r\u00fe\tA\u00cf\u0012\u00f4\u0000\u000b\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e91\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00e6\u00dc\"\u00e9\u00f9\u00ff\u00fe\u00fa6\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u000e\u0005\u00fe\u001f\u00d2\n\u0001\u00f4\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00cc\u0014\u0010\u00fa(\u00ab\u0003\u00f2/\u00de\u00fe\u0008\u00f30\u00dc\u00f8\u00fc\u000b\u0000\u00ee*\u00ea\u0006\n\u00f6\u0010\u0003\u00f22\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u000e\u0005\u00fe\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00eb\u00e0\u00ee3\u00de\u00fe\u0008\u00f5\u000c\u0000\u0007\u00fd\u0003\u00ff\u00fc\u0004\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00ed\u00e2\u00ef\u000f\"\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u0003\u00f22\u00d5\u000c\u0000#\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u00fb\u000c\u000c\u00fc\u00fe\u00dc.\u00d2\u0001,\u00d0\u0012\u00f8\u00fb!\u00dc\n\u000c\u0016\u00fa\u0018\u00f9\u00bb\u0000P\u00bb\u0006\u00f6\u0001\u000b\u0002\u00ff\u00f9\u00f9T\u00b5\u0008\u0000\u00f3L\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\u0016\u00fb\u0017\u00f9\u0016\u00fd\u0015\u00f9\u0016\u00f9\u0019\u00f9\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00ec\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00d2\u0001*\u00dc\u00fe\u000e\u0002\u00f6\u00fa\u000f\u00f2#\u00ee\u0005\u00fe\u0016\u00e2\u0003\u00f4\n\u00ec\u00164\u00c6\u00fbB\u00eb\u00e4\u00ee\u0014\u0019\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00fe\u000f\u00fe!\u00e0\u00ee\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9+\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4E\u00c6\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6?\u00ee\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\t\u0003\u00fa\u0003\u00f22\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00cc\u0004\u00ee\u00143\u00cc\u0004\u00ee\u00143\u0000\u00fa\u0008\u00f2\u0010\u0003\u00f2/\u0003\u0010\u00fa\u00ed\u0017\u00fc\u00fb\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa*\u00f0\u00ee\r$\u00da\u0008\u00f9\t\u00f8\u00fb\u0002\u00f8\u00fe\u00fd\u000f\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cd7\n\u00ec\u00164\u00c6\u00fbB\u00bb\u0008\u00fe\r\u00fc\u00f8\u0003\u00f2%\u00df\u0004\u0000\u000c\u00f4\u00ff\u00fc\u0003\u00f24\u00e0\u00f0\u0005\u0004\u00f8\u0002\u0010\u0016\u00f0\u00ee\r\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00df\u00f0\u000c\u00f4\u000e\u00f6\u00fc&\u00ed\u00f7\u000e\u0005\u00fe\u0016\u00f6\u00f8\u0011\u0017\u00ea\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u0017\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0003\u00f4\u0018\u00e6\n\u00f6\u0010\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00fb\u000b\u00ce\u0016\u00ff\u00f6\u00fd\u000c\u00fb\u0002\u00f4\u000b\u00f3\u0004\u0007\u00067\u00bb\u0010\u00ee\u0005G\u00db\u00f0\u00ee\u0005 \u00e2\u000c\u00fe\u00fa\u0010\u00ee\r\u001d\u00e4\u00f7\u0000\u0003\u00f2,\u00dc\u0006\u00f6\u000c\t\u00f6,\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u00f5\u0003\u00fe\u0005\u0008\u00ee%\u00e6*\u00d5\u0012\u00ff\u00f0\u000c\u00fb\u0002\u0016\u00fe\u0014\u00f9\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ba\u0002\u000c\u00fe?\u00db\u00dc\n\u000c\u0002\u000f\u00f6\u00f6\u00f8\u0011\u00ef\u0004\u0001\u000e\u00f8\u00fb!\u00ec\u00fd\t\u0019\u00e5\u00fe\u0001\u0004\u00f7\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\"\u00e0\u00f3\u0011\u00f2\n\u00fa\u00fd\u0006\u00fe\u0006.\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9\u00fe\u000f\u00fe\"\u00d8\u000c\u00ef\u0001\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4\u0006\u0012\u00f2\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa6\u00dc\u00f8\u000e\u0003\u00f0\u0006\u00fe\n\u0005\u00f3\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5"

    const/4 v4, 0x0

    const/16 v5, 0x3d6

    if-eqz v1, :cond_0

    new-array v1, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v1, 0x7d

    goto :goto_0

    :cond_0
    new-array v1, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v1, 0x37

    :goto_0
    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$$b:I

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v2, v1, 0x47

    and-int/lit8 v1, v1, 0x47

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    return-void
.end method
