.class public final Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAWSKinesisStreamConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AWSKinesisStreamConfig.kt\ncom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,301:1\n37#2,2:302\n37#2,2:304\n*S KotlinDebug\n*F\n+ 1 AWSKinesisStreamConfig.kt\ncom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion\n*L\n79#1:302,2\n90#1:304,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;-><init>()V

    return-void
.end method

.method private final getStringFromJSONArray(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "array.getString(index)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    const-string p2, "AWSKinesisStreamConfig"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final verifyConfigure(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyEdges(Lorg/json/JSONObject;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyDiscarded(Lorg/json/JSONObject;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyLevels(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final verifyCurrentVersionGame(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "game-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    const-string p2, "sdk"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private final verifyCurrentVersionSDK(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdk-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/VersionUtil;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/VersionUtil;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private final verifyDiscarded(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "discarded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final verifyEdges(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "edges"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "edges.length() < 3"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private final verifyGame(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "game"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private final verifyGlobal(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "global"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    const-string v1, "edges"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final verifyLevels(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "levels"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "!(levels >= 0 && levels <= 511)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final verifySDK(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "sdk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private final verifyStreams(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "streams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "streams.length() < 4"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final verifyUser(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyConfigure(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private final verifyVIPs(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "vips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, ";"

    const-string v2, ""

    const-string v3, "AWSKinesisStreamConfig"

    .line 1
    const-string v0, "ec"

    invoke-static {p1, v0}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "v1"

    invoke-static {p1, v0}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p1, "streams"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 10
    new-instance v4, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;

    invoke-direct {v4}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;-><init>()V

    .line 13
    const-string v0, "awsKinesisStreamConfigJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 14
    invoke-direct {p0, p1, v5}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->getStringFromJSONArray(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v4, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setAccessKeyId(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 21
    invoke-direct {p0, p1, v6}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->getStringFromJSONArray(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v4, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 29
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->getStringFromJSONArray(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    .line 32
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 256
    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 257
    check-cast v0, [Ljava/lang/String;

    .line 258
    aget-object v7, v0, v5

    invoke-virtual {v4, v7}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setSdkRegion(Ljava/lang/String;)V

    .line 259
    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setSdkStreamName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-static {v3, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x3

    .line 265
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->getStringFromJSONArray(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    .line 268
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 483
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 484
    check-cast p1, [Ljava/lang/String;

    .line 485
    aget-object v0, p1, v5

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setGameRegion(Ljava/lang/String;)V

    .line 486
    aget-object p1, p1, v6

    invoke-virtual {v4, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->setGameStreamName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 488
    invoke-static {v3, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v4
.end method

.method public final verifyEventCollection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ec"

    const-string v1, "GPCEventCollection"

    const-string v2, "metaData"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gameVersion"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 5
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "v1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyStreams(Lorg/json/JSONObject;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyGlobal(Lorg/json/JSONObject;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifySDK(Lorg/json/JSONObject;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyCurrentVersionSDK(Lorg/json/JSONObject;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyGame(Lorg/json/JSONObject;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyCurrentVersionGame(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyUser(Lorg/json/JSONObject;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyVIPs(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string p1, "validate eventcollectionAppconfigSchema ok."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 55
    const-string p2, "validate eventcollectionAppconfigSchema error."

    invoke-static {v1, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method
