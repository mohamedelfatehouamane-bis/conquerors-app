.class public Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkInfo"

.field public static final UNDEFINED_TIMEOUT:J = -0x1L


# instance fields
.field private prefix:Ljava/lang/String;

.field private timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    return-void
.end method

.method public static createFromData(Ljava/lang/String;)Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p0, "prefix"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    .line 5
    const-string p0, "timeout"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    const-string v0, "LinkInfo"

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 3
    iget-wide v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    iget-wide v4, p1, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    iget-object p1, p1, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    return-wide v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    return-void
.end method

.method public toPersistenceData()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "prefix"

    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "timeout"

    iget-wide v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    const-string v2, "LinkInfo"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkInfo{prefix=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
