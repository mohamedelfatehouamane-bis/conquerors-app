.class public Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;

.field public final synthetic c:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->c:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download responseString:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceDownloadImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "success"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->c:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;

    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->access$000(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;)Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;

    invoke-interface {p1, p3}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;->onSuccess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;

    const-string p3, "701001"

    const/4 v2, 0x0

    invoke-static {p3, v2, v2, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 13
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
