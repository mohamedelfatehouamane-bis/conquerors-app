.class public Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/share/download/IResourceDownload;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceDownloadImpl"


# instance fields
.field private downloadResourceManager:Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadResourceManager:Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;)Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadResourceManager:Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    return-object p0
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadImage url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceDownloadImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadResourceManager:Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "downloadImage by cache,cache id: +"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p3, v0}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;->onSuccess(Ljava/io/File;)V

    return-void

    .line 10
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "really downloadImage fileName:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-direct {v2}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>()V

    new-instance v7, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$a;

    invoke-direct {v7, p0}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$a;-><init>(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;)V

    new-instance v8, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;

    invoke-direct {v8, p0, p1, p3}, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$b;-><init>(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;)V

    const/4 v4, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->downloadFileRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadResourceManager:Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/share/download/DownloadResourceManager;->clear()V

    return-void
.end method
