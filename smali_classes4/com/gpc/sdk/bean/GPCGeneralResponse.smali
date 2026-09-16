.class public Lcom/gpc/sdk/bean/GPCGeneralResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralStructure"


# instance fields
.field private data:Ljava/lang/String;

.field private error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;

    invoke-direct {v1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;-><init>()V

    .line 3
    iput-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->raw:Ljava/lang/String;

    .line 4
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v3, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    .line 10
    :goto_0
    const-string p0, "error"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 11
    new-instance v0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;-><init>()V

    iput-object v0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    .line 12
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$002(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;I)I

    .line 13
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v2, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 16
    :cond_1
    iget-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-static {p0, v3}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method

.method public static generatorV2(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;

    invoke-direct {v1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;-><init>()V

    .line 3
    iput-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->raw:Ljava/lang/String;

    .line 5
    const-string p0, "error"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "code"

    const-string v4, "message"

    const-string v5, "data"

    if-nez v2, :cond_1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v6, "api_gateway"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v5, p0

    const-wide/32 v7, 0x4c4b400

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    .line 10
    new-instance v2, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-direct {v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;-><init>()V

    iput-object v2, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    .line 11
    invoke-static {v2, p0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$002(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;I)I

    .line 12
    iget-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 15
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid response type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-string v6, ""

    if-nez v2, :cond_2

    .line 21
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_2
    iput-object v6, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    .line 26
    :goto_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;-><init>()V

    iput-object v0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    .line 28
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$002(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;I)I

    .line 29
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    iget-object v0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 32
    :cond_3
    iget-object p0, v1, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-static {p0, v6}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public createException()Lcom/gpc/sdk/error/GPCException;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    invoke-static {v1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$000(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->access$000(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    const-string v0, "GeneralStructure"

    const-string v2, "error is null."

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->error:Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse;->raw:Ljava/lang/String;

    return-void
.end method
