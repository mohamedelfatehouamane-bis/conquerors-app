.class public Lcom/gpc/ops/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/ops/k;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "OPSResourceUploader"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v4}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v3}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/operations/utils/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v5}, Lcom/gpc/ops/k;->b(Lcom/gpc/ops/k;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v4}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/gpc/operations/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v4}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v4, v5}, Lcom/gpc/photoselector/model/PhotoModel;->setInternalFile(Z)V

    .line 12
    invoke-virtual {v4, v3}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v0, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v0, v1}, Lcom/gpc/ops/k;->a(Lcom/gpc/ops/k;Ljava/util/ArrayList;)V

    return-void

    .line 25
    :cond_0
    :try_start_1
    const-string v1, "file not exist"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v1}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object v1

    sget-object v3, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 30
    const-string v3, ""

    invoke-static {v0, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/ops/k$a;->a:Lcom/gpc/ops/k;

    invoke-static {v0}, Lcom/gpc/ops/k;->c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    move-result-object v0

    sget-object v1, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method
