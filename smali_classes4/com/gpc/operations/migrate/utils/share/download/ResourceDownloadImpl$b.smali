.class public Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;

.field public final synthetic c:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->c:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;

    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;->onDownloadProgress(F)V

    return-void
.end method

.method public onDownloadRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;Ljava/io/File;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V
    .locals 2

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "download responseString:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ResourceDownloadImpl"

    invoke-static {v0, p4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p4, "success"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, ""

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->c:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;->access$000(Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;)Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;

    invoke-interface {p1, p3}, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;->onSuccess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {v0, p4, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl$b;->b:Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;

    const-string p3, "700201"

    const/4 v1, 0x0

    invoke-static {p3, v1, v1, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 13
    invoke-static {v0, p4, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
