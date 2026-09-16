.class public Lcom/gpc/operations/helper/ServerMessagePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerMessagePayload"


# instance fields
.field private cmd:I

.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gpc/operations/helper/ServerMessagePayload;
    .locals 6

    .line 1
    const-string v0, "data"

    const-string v1, "cmd"

    const-string v2, "ServerMessagePayload"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/gpc/operations/helper/ServerMessagePayload;

    invoke-direct {p0}, Lcom/gpc/operations/helper/ServerMessagePayload;-><init>()V

    .line 3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    const-string p0, "cmd is null."

    invoke-static {v2, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->cmd:I

    .line 9
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->data:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 14
    const-string v0, ""

    invoke-static {v2, v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method


# virtual methods
.method public getCmd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->cmd:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->cmd:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/helper/ServerMessagePayload;->data:Ljava/lang/String;

    return-void
.end method
