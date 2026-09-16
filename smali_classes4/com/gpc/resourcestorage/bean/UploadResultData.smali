.class public Lcom/gpc/resourcestorage/bean/UploadResultData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadResultData"


# instance fields
.field private key:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private review:Z

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/gpc/resourcestorage/bean/UploadResultData;
    .locals 9

    const-string v0, "review"

    const-string v1, "status"

    const-string v2, "key"

    const-string v3, "payload"

    const-string v4, "resource_id"

    const-string v5, "UploadResultData"

    .line 1
    new-instance v6, Lcom/gpc/resourcestorage/bean/UploadResultData;

    invoke-direct {v6}, Lcom/gpc/resourcestorage/bean/UploadResultData;-><init>()V

    const/4 v7, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5
    const-string p0, "resource_id is null"

    invoke-static {v5, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 8
    :cond_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/gpc/resourcestorage/bean/UploadResultData;->setResourceId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    const-string v4, "payload is null"

    invoke-static {v5, v4}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/gpc/resourcestorage/bean/UploadResultData;->setPayload(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    const-string p0, "key is null"

    invoke-static {v5, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 19
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/gpc/resourcestorage/bean/UploadResultData;->setKey(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    const-string p0, "status is null"

    invoke-static {v5, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 25
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gpc/resourcestorage/bean/UploadResultData;->setStatus(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v6, p0}, Lcom/gpc/resourcestorage/bean/UploadResultData;->setReview(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v6

    :catch_0
    move-exception p0

    .line 31
    const-string v0, "JSONException"

    invoke-static {v5, v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isReview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->review:Z

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->key:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->payload:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setReview(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->review:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/UploadResultData;->status:Ljava/lang/String;

    return-void
.end method
