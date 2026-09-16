.class public Lcom/gpc/ops/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/y;->b()V
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
    iput-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileHeadRequest responseString "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ResourceDownloadHelper"

    invoke-static {v0, p3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p3

    const-string v1, "700201"

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p3

    invoke-static {v1, v3, v3, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {v0, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_6

    .line 11
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_2

    .line 19
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p2

    .line 21
    const-string p3, "x-amz-meta-resource-status"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 22
    const-string v4, "x-amz-meta-resource-id"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "download responseHeaders resourceStatus:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setStatus(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    iget-object p3, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p3, p2}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setMaxAge(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->c(Lcom/gpc/ops/y;)V

    .line 38
    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 43
    :cond_3
    const-string p1, "resource status not pass,game should judge status"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_1
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 47
    invoke-static {v0, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 48
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setResourceId(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p1}, Lcom/gpc/ops/y;->d(Lcom/gpc/ops/y;)V

    return-void

    .line 50
    :cond_5
    :goto_1
    const-string p2, "resource status or id is null "

    invoke-static {v0, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_2
    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p3

    invoke-static {v1, v3, v3, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 54
    invoke-static {v0, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 55
    :cond_6
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p2}, Lcom/gpc/ops/y;->b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y$b;->a:Lcom/gpc/ops/y;

    invoke-static {p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p3

    const-string v1, "700202"

    invoke-static {v1, v3, v3, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 57
    invoke-static {v0, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
