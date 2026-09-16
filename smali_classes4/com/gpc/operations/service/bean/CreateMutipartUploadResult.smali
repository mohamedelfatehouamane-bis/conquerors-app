.class public Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateMutipartUploadResult"


# instance fields
.field private expiresAt:I

.field private key:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;
    .locals 5

    .line 1
    const-string v0, "expires_at"

    const-string v1, "upload_id"

    const-string v2, "key"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

    invoke-direct {p0}, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;-><init>()V

    .line 3
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->key:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->uploadId:Ljava/lang/String;

    .line 9
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->expiresAt:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 14
    const-string v0, "CreateMutipartUploadResult"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExpiresAt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->expiresAt:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresAt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->expiresAt:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->uploadId:Ljava/lang/String;

    return-void
.end method
