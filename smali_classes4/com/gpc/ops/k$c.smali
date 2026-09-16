.class public Lcom/gpc/ops/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/upload/UploadStateTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/ops/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

.field public final synthetic b:Lcom/gpc/ops/k;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/k;Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/operations/service/upload/UploadTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "onFailure"

    const-string v1, "OPSResourceUploader"

    invoke-static {v1, v0, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onFileException(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFileException code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceUploader"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p2}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onFinished(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
    .locals 9

    const-string v1, ""

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onFinished result: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPSResourceUploader"

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p2}, Lcom/gpc/resourcestorage/bean/UploadResultData;->create(Lorg/json/JSONObject;)Lcom/gpc/resourcestorage/bean/UploadResultData;

    move-result-object p1

    if-nez p1, :cond_1

    .line 12
    const-string p1, "upload image error,uploadResult is null"

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    sget-object p2, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 16
    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 20
    :cond_1
    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/UploadResultData;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setResourceId(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/UploadResultData;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setStatus(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/UploadResultData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setFileKey(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->d(Lcom/gpc/ops/k;)Lcom/gpc/operations/database/IDataBase;

    move-result-object p1

    new-instance p2, Lcom/gpc/operations/database/dao/bean/DBResource;

    iget-object v0, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {p2, v0}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {p1, p2}, Lcom/gpc/operations/database/IDataBase;->update(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 26
    :try_start_3
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 28
    :try_start_4
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 31
    :cond_2
    const-string p2, "upload image error,no success"

    invoke-static {v2, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p2, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String;

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v5

    .line 33
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getError()Lcom/gpc/operations/helper/GeneralResponse$Error;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse$Error;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getError()Lcom/gpc/operations/helper/GeneralResponse$Error;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/helper/GeneralResponse$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 35
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getError()Lcom/gpc/operations/helper/GeneralResponse$Error;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse$Error;->getCode()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    const/16 v0, 0xc9

    if-ne p2, v0, :cond_3

    .line 39
    iget-object p2, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p2}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p2

    instance-of p2, p2, Lcom/gpc/resourcestorage/listener/ResourceUploadExtListener;

    if-eqz p2, :cond_3

    .line 40
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    const-string p1, "denies_at"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 42
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gpc/resourcestorage/listener/ResourceUploadExtListener;

    iget-object p1, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v4

    invoke-interface/range {v3 .. v8}, Lcom/gpc/resourcestorage/listener/ResourceUploadExtListener;->onLimited(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;JLjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    .line 46
    :cond_3
    :try_start_5
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 48
    :try_start_6
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 53
    const-string p2, "response data: Parse failure."

    invoke-static {v2, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :try_start_7
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    sget-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    move-object p1, v0

    .line 57
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onProgress(Lcom/gpc/operations/service/upload/UploadTask;F)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onProgress: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPSResourceUploader"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p1, p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setProgress(F)V

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/ops/k$c;->b:Lcom/gpc/ops/k;

    invoke-static {p1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/k$c;->a:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/gpc/operations/service/upload/UploadTask;F)V
    .locals 0

    .line 1
    const-string p1, "OPSResourceUploader"

    const-string p2, "onStart"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
