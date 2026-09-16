.class public final Lcom/appsflyer/internal/AFf1hSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Lcom/appsflyer/internal/AFf1lSDK;",
        ">;"
    }
.end annotation


# instance fields
.field public AFLogger:Lcom/appsflyer/internal/AFf1lSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

.field public final d:Lcom/appsflyer/internal/AFf1iSDK;

.field private final e:Lcom/appsflyer/internal/AFf1cSDK;

.field private final force:Lcom/appsflyer/internal/AFf1gSDK;

.field private final i:Lcom/appsflyer/internal/AFg1zSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFd1rSDK;

.field public unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

.field private final v:Lcom/appsflyer/internal/AFe1zSDK;

.field private final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFf1gSDK;Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFf1dSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1iSDK;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    const-string v2, "UpdateRemoteConfiguration"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1lSDK;

    .line 66
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1hSDK;->e:Lcom/appsflyer/internal/AFf1cSDK;

    .line 67
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 68
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1hSDK;->i:Lcom/appsflyer/internal/AFg1zSDK;

    .line 69
    iput-object p4, p0, Lcom/appsflyer/internal/AFf1hSDK;->force:Lcom/appsflyer/internal/AFf1gSDK;

    .line 70
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1hSDK;->v:Lcom/appsflyer/internal/AFe1zSDK;

    .line 71
    iput-object p6, p0, Lcom/appsflyer/internal/AFf1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

    .line 72
    iput-object p7, p0, Lcom/appsflyer/internal/AFf1hSDK;->w:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/appsflyer/internal/AFf1hSDK;->d:Lcom/appsflyer/internal/AFf1iSDK;

    return-void
.end method

.method private AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFe1pSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFh1nSDK;",
            "Lcom/appsflyer/internal/AFh1fSDK;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    if-eqz v0, :cond_0

    .line 10059
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    .line 250
    iget-wide v3, v3, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    .line 251
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 254
    :goto_0
    instance-of v0, v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 257
    check-cast v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-virtual {v2}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;->getMetrics()Lcom/appsflyer/internal/AFe1tSDK;

    move-result-object v2

    iget-wide v3, v2, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    move-object v15, v0

    goto :goto_1

    :cond_1
    move-object v15, v2

    :goto_1
    move-wide v8, v3

    if-eqz v1, :cond_2

    .line 11053
    iget-object v0, v1, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v6, v0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, p2

    .line 266
    new-instance v5, Lcom/appsflyer/internal/AFh1iSDK;

    move-object/from16 v7, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v5 .. v15}, Lcom/appsflyer/internal/AFh1iSDK;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/appsflyer/internal/AFf1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    return-void
.end method

.method private unregisterClient()Lcom/appsflyer/internal/AFf1lSDK;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 127
    const-string v0, " seconds"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 128
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1hSDK;->w:Ljava/lang/String;

    .line 1273
    iget-object v5, v1, Lcom/appsflyer/internal/AFf1hSDK;->i:Lcom/appsflyer/internal/AFg1zSDK;

    .line 2065
    iget-object v5, v5, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 1275
    const-string v6, "Dev key is not set, SDK is not started."

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 1280
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v7, "Can\'t create CDN token, domain or version is not provided."

    invoke-virtual {v2, v5, v7}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    goto :goto_1

    .line 1284
    :cond_1
    iget-object v7, v1, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 2168
    iget-object v7, v7, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 3025
    iget-object v7, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 2084
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1284
    const-string v9, "appsflyersdk.com"

    filled-new-array {v9, v2, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 3119
    const-string v7, "\u2063"

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    invoke-static {v2, v5}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1276
    :cond_2
    :goto_0
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v2, v5, v6}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    :goto_1
    move-object v2, v8

    :goto_2
    if-nez v2, :cond_3

    .line 131
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "can\'t create CDN token, skipping fetch config"

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->v(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    .line 135
    :cond_3
    :try_start_0
    iget-object v5, v1, Lcom/appsflyer/internal/AFf1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFf1dSDK;->values()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 136
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Cached config is expired, updating..."

    invoke-virtual {v5, v7, v9}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 137
    iget-object v5, v1, Lcom/appsflyer/internal/AFf1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventType()Z

    move-result v5

    .line 138
    iget-object v7, v1, Lcom/appsflyer/internal/AFf1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

    invoke-virtual {v7}, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventParameterName()Z

    move-result v7

    .line 3182
    iget-object v9, v1, Lcom/appsflyer/internal/AFf1hSDK;->v:Lcom/appsflyer/internal/AFe1zSDK;

    const/16 v10, 0x5dc

    invoke-virtual {v9, v5, v7, v2, v10}, Lcom/appsflyer/internal/AFe1zSDK;->values(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v5

    .line 3186
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFe1xSDK;->valueOf()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v7

    .line 3188
    invoke-virtual {v7}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3189
    invoke-virtual {v7}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFh1nSDK;

    .line 3190
    const-string v9, "x-amz-meta-af-auth-v1"

    invoke-virtual {v7, v9}, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3191
    const-string v10, "X-Af-Date"

    invoke-virtual {v7, v10}, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3192
    const-string v11, "CF-Cache-Status"

    invoke-virtual {v7, v11}, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3193
    iget-object v12, v1, Lcom/appsflyer/internal/AFf1hSDK;->i:Lcom/appsflyer/internal/AFg1zSDK;

    .line 5065
    iget-object v12, v12, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 3194
    new-instance v13, Lcom/appsflyer/internal/AFf1fSDK;

    invoke-direct {v13}, Lcom/appsflyer/internal/AFf1fSDK;-><init>()V

    invoke-virtual {v13, v10}, Lcom/appsflyer/internal/AFf1fSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v12, :cond_7

    .line 3195
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    goto/16 :goto_3

    .line 3199
    :cond_4
    iget-object v6, v1, Lcom/appsflyer/internal/AFf1hSDK;->e:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v6, v5, v9, v2, v12}, Lcom/appsflyer/internal/AFf1cSDK;->valueOf(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;

    move-result-object v6

    .line 3200
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFh1hSDK;->AFInAppEventType()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v10, :cond_5

    .line 6068
    iget-object v9, v5, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    if-eqz v9, :cond_5

    .line 7012
    iput-object v8, v9, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    .line 3202
    :cond_5
    iget-object v9, v1, Lcom/appsflyer/internal/AFf1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1dSDK;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFf1dSDK;->valueOf()J

    move-result-wide v9

    .line 3203
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "using max-age fallback: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/appsflyer/internal/AFg1mSDK;->v(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 3204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3205
    iget-object v14, v1, Lcom/appsflyer/internal/AFf1hSDK;->force:Lcom/appsflyer/internal/AFf1gSDK;

    .line 8058
    iget-object v15, v5, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 7103
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const/4 v15, 0x2

    .line 7104
    invoke-static {v8, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 7105
    iget-object v15, v14, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "af_remote_config"

    invoke-interface {v15, v1, v8}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 7052
    iget-object v1, v14, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    iput-object v1, v14, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

    .line 7053
    iget-object v1, v14, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v8, "af_rc_timestamp"

    invoke-interface {v1, v8, v12, v13}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 7054
    iget-object v1, v14, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v8, "af_rc_max_age"

    invoke-interface {v1, v8, v9, v10}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 7055
    iput-object v5, v14, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    .line 7056
    iput-wide v12, v14, Lcom/appsflyer/internal/AFf1gSDK;->valueOf:J

    .line 7057
    iput-wide v9, v14, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper:J

    .line 3206
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Config successfully updated, timeToLive: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 9024
    iget-object v5, v6, Lcom/appsflyer/internal/AFh1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    move-object/from16 v1, p0

    move-object v6, v11

    .line 3207
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1hSDK;->values(Ljava/lang/String;JLcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1pSDK;)V

    .line 3208
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    :cond_6
    move-object v0, v11

    .line 10024
    iget-object v5, v6, Lcom/appsflyer/internal/AFh1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    move-object/from16 v1, p0

    move-object v6, v0

    .line 3210
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1hSDK;->values(Ljava/lang/String;JLcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1pSDK;)V

    .line 3211
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v5, "fetched config is not valid (MITM?) refuse to use it."

    invoke-virtual {v0, v1, v5}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 3212
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    .line 3196
    :cond_7
    :goto_3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0, v1, v6}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 3197
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 3215
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1hSDK;->values(Ljava/lang/String;JLcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1pSDK;)V

    .line 3216
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to fetch remote config from CDN with status code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 3217
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    .line 141
    :cond_9
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v5, "active config is valid, skipping fetch"

    invoke-virtual {v0, v1, v5}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1lSDK;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 160
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to update remote config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 162
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 163
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_a

    .line 166
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    .line 164
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 145
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to fetch remote config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 149
    instance-of v0, v8, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-eqz v0, :cond_b

    .line 150
    move-object v0, v8

    check-cast v0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v0}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 152
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 154
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_c

    .line 157
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0

    .line 155
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InterruptedIOException;

    throw v0
.end method

.method private values(Ljava/lang/String;JLcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1pSDK;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFh1fSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFe1pSDK<",
            "Lcom/appsflyer/internal/AFh1nSDK;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 234
    invoke-virtual/range {p6 .. p6}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFh1nSDK;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object/from16 v9, p5

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v8, p4

    move-object/from16 v6, p6

    .line 239
    invoke-direct/range {v2 .. v10}, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1hSDK;->unregisterClient()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1lSDK;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    sget-object v1, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 93
    :goto_0
    const-string v1, "RC update config failed"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1lSDK;

    .line 95
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0

    .line 90
    :catch_2
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1lSDK;

    .line 91
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
