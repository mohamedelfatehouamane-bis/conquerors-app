.class public Lcom/gpc/operations/service/bean/UploadOnePartResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadOnePartResult"


# instance fields
.field private etag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gpc/operations/service/bean/UploadOnePartResult;
    .locals 3

    .line 1
    const-string v0, "etag"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;

    invoke-direct {p0}, Lcom/gpc/operations/service/bean/UploadOnePartResult;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;->etag:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 8
    const-string v0, "UploadOnePartResult"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;->partNumber:I

    return v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/bean/UploadOnePartResult;->partNumber:I

    return-void
.end method
