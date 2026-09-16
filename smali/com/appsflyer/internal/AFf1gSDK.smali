.class public final Lcom/appsflyer/internal/AFf1gSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

.field public AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

.field public AFKeystoreWrapper:J

.field public valueOf:J

.field public final values:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    .line 40
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFh1nSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    .line 41
    const-string v0, "af_rc_timestamp"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/appsflyer/internal/AFf1gSDK;->valueOf:J

    .line 42
    const-string v0, "af_rc_max_age"

    invoke-interface {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper:J

    return-void
.end method

.method private AFKeystoreWrapper()Lcom/appsflyer/internal/AFh1nSDK;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "af_remote_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "No configuration found in cache"

    invoke-virtual {v0, v1, v3}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-object v2

    .line 93
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    new-instance v0, Lcom/appsflyer/internal/AFh1nSDK;

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFh1nSDK;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Error reading malformed configuration from cache, requires fetching from remote again"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v2
.end method
