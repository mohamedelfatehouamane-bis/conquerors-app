.class public Lcom/gpc/operations/helper/GeneralResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/helper/GeneralResponse$Error;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralResponse"


# instance fields
.field private data:Ljava/lang/String;

.field private error:Lcom/gpc/operations/helper/GeneralResponse$Error;

.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/gpc/operations/helper/GeneralResponse;

    invoke-direct {v1}, Lcom/gpc/operations/helper/GeneralResponse;-><init>()V

    .line 3
    iput-object p0, v1, Lcom/gpc/operations/helper/GeneralResponse;->raw:Ljava/lang/String;

    .line 4
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/operations/helper/GeneralResponse;->data:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v3, v1, Lcom/gpc/operations/helper/GeneralResponse;->data:Ljava/lang/String;

    .line 10
    :goto_0
    const-string p0, "error"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 11
    new-instance v0, Lcom/gpc/operations/helper/GeneralResponse$Error;

    invoke-direct {v0}, Lcom/gpc/operations/helper/GeneralResponse$Error;-><init>()V

    iput-object v0, v1, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    .line 12
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/gpc/operations/helper/GeneralResponse$Error;->access$002(Lcom/gpc/operations/helper/GeneralResponse$Error;I)I

    .line 13
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v2, v1, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gpc/operations/helper/GeneralResponse$Error;->access$102(Lcom/gpc/operations/helper/GeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 16
    :cond_1
    iget-object p0, v1, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    invoke-static {p0, v3}, Lcom/gpc/operations/helper/GeneralResponse$Error;->access$102(Lcom/gpc/operations/helper/GeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public createException()Lcom/gpc/operations/migrate/error/GPCException;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    invoke-static {v1}, Lcom/gpc/operations/helper/GeneralResponse$Error;->access$000(Lcom/gpc/operations/helper/GeneralResponse$Error;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GeneralResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/gpc/operations/helper/GeneralResponse$Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GeneralResponse;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/gpc/operations/helper/GeneralResponse$Error;->access$000(Lcom/gpc/operations/helper/GeneralResponse$Error;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    const-string v0, "GeneralResponse"

    const-string v2, "error is null."

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/helper/GeneralResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/gpc/operations/helper/GeneralResponse$Error;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/helper/GeneralResponse;->error:Lcom/gpc/operations/helper/GeneralResponse$Error;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/helper/GeneralResponse;->raw:Ljava/lang/String;

    return-void
.end method
