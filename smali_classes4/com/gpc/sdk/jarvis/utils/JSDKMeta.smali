.class public Lcom/gpc/sdk/jarvis/utils/JSDKMeta;
.super Ljava/lang/Object;
.source "JSDKMeta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKMeta"

.field protected static final V_1:Ljava/lang/String; = "1"


# instance fields
.field private name:Ljava/lang/String;

.field private raw:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->version:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/jarvis/utils/JSDKMeta;
    .locals 8

    .line 63
    const-string v0, "version"

    const-string v1, "_"

    const-string v2, "SDKMeta"

    .line 0
    const-string v3, "unsupport version:"

    .line 63
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v5, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    invoke-direct {v5}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;-><init>()V

    .line 65
    invoke-virtual {v5, p0}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, p1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setRaw(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "1"

    if-nez v6, :cond_1

    .line 68
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v5, v7}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v5, v7}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setV(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {v5}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {v4, v5}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->parseV1(Lorg/json/JSONObject;Lcom/gpc/sdk/jarvis/utils/JSDKMeta;)V

    return-object v5

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", raw:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseV1(Lorg/json/JSONObject;Lcom/gpc/sdk/jarvis/utils/JSDKMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setVersion(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    const-string p0, "SDKMeta"

    const-string v0, "not found version."

    invoke-static {p0, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string p0, ""

    invoke-virtual {p1, p0}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->name:Ljava/lang/String;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->raw:Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->v:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->version:Ljava/lang/String;

    return-void
.end method
