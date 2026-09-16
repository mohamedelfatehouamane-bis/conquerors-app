.class public Lcom/gpc/ops/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/y;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/ops/y;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {v0}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setProgress(F)V

    .line 2
    iget-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {v0}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "ResourceDownloadHelper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onDownloadRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;Ljava/io/File;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V
    .locals 3

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "download responseString:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ResourceDownloadHelper"

    invoke-static {v0, p4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p4, "success"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, ""

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setLocalPath(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->c(Lcom/gpc/ops/y;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-static {v0, p4, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$d;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p3

    const-string v1, "700201"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 15
    invoke-static {v0, p4, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
