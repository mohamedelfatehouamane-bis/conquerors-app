.class public Lcom/gpc/ops/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/y;->setResourceDownloadListener(Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;

.field public final synthetic b:Lcom/gpc/ops/y;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/y;Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/y$a;->b:Lcom/gpc/ops/y;

    iput-object p2, p0, Lcom/gpc/ops/y$a;->a:Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadHadCache(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    .locals 0

    .line 1
    const-string p1, "ResourceDownloadHelper"

    const-string p2, "onDownloadHadCache"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y$a;->a:Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y$a;->a:Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y$a;->a:Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V

    :cond_0
    return-void
.end method
