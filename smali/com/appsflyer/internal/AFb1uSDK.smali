.class public final Lcom/appsflyer/internal/AFb1uSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1cSDK;

.field private final values:Lcom/appsflyer/internal/AFh1vSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1vSDK;Lcom/appsflyer/internal/AFb1cSDK;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    .line 26
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1cSDK;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 20

    move-object/from16 v1, p0

    .line 30
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    .line 1083
    iget-object v2, v0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    .line 31
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    .line 2045
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1oSDK;->values(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v3, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFh1vSDK;->w()Z

    move-result v3

    .line 33
    iget-object v4, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFh1vSDK;->i()Z

    move-result v4

    .line 34
    iget-object v5, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFh1vSDK;->v()Z

    move-result v5

    .line 35
    iget-object v6, v1, Lcom/appsflyer/internal/AFb1uSDK;->values:Lcom/appsflyer/internal/AFh1vSDK;

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper()Z

    move-result v6

    .line 37
    const-string v7, ""

    .line 39
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    return-object v9

    :cond_0
    const/4 v3, 0x1

    .line 45
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 47
    iget-object v11, v1, Lcom/appsflyer/internal/AFb1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1cSDK;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    .line 49
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "call = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "; size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " byte"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v11, v3, :cond_1

    const-string v11, "s"

    goto :goto_0

    :cond_1
    move-object v11, v7

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; body = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf(Ljava/lang/String;)V

    .line 53
    :cond_2
    const-string v0, "AppsFlyer"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 54
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v0, 0x7530

    .line 55
    :try_start_1
    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 56
    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 57
    const-string v0, "POST"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v11, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 59
    invoke-virtual {v11, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 60
    const-string v0, "Content-Type"

    if-eqz v6, :cond_3

    const-string v12, "application/octet-stream"

    goto :goto_1

    :cond_3
    const-string v12, "application/json"

    :goto_1
    invoke-virtual {v11, v0, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v11}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v13, 0x0

    if-eqz v6, :cond_8

    .line 64
    :try_start_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v13

    sget-object v6, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v14, -0x6fd4d877

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x30

    if-eqz v6, :cond_4

    const/16 v17, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/16 v16, 0x0

    cmpl-float v6, v6, v16

    rsub-int/lit8 v6, v6, 0x26

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const p1, -0x6fd4d877

    shr-int/lit8 v14, v16, 0x16

    add-int/lit16 v14, v14, 0x17fb

    int-to-char v14, v14

    invoke-static {v7, v15, v13, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v17, 0x0

    add-int/lit8 v13, v16, 0x25

    :try_start_3
    invoke-static {v6, v14, v13}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    const-string v13, "AFInAppEventParameterName"

    new-array v14, v3, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v17

    invoke-virtual {v6, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v8, v6, v17

    sget-object v8, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v9, -0x73cfbcbd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v13

    const-wide/16 v18, 0x0

    cmp-long v8, v13, v18

    rsub-int/lit8 v8, v8, 0x26

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    add-int/lit16 v13, v13, 0x17fb

    int-to-char v13, v13

    invoke-static {v15}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v14

    rsub-int/lit8 v14, v14, 0x54

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v13, "valueOf"

    new-array v14, v3, [Ljava/lang/Class;

    const-class v15, [B

    aput-object v15, v14, v17

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    throw v6

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/16 v17, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_7

    throw v6

    :cond_7
    throw v0

    :cond_8
    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v12, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catch_0
    move-exception v0

    .line 66
    :try_start_6
    const-string v6, "AFCrypto: reflection init failed"

    invoke-static {v6, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 69
    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 71
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz v4, :cond_9

    .line 73
    invoke-static {v11}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :cond_9
    if-eqz v5, :cond_a

    .line 76
    iget-object v4, v1, Lcom/appsflyer/internal/AFb1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1cSDK;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v7}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_b

    .line 80
    const-string v0, "Status 200 ok"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v3, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v9, v11

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 85
    :goto_7
    const-string v4, "Error while calling "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v9

    .line 88
    :cond_b
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Connection "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    const-string v2, "error"

    goto :goto_9

    :cond_c
    const-string v2, "call succeeded"

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v11
.end method
