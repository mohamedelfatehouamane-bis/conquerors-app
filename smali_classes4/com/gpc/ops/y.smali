.class public Lcom/gpc/ops/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/resourcestorage/OPSResourceDownloader;


# static fields
.field public static final i:Ljava/lang/String; = "ResourceDownloadHelper"

.field public static final j:Ljava/lang/String; = "x-amz-meta-resource-status"

.field public static final k:Ljava/lang/String; = "x-amz-meta-resource-id"

.field public static final l:Ljava/lang/String; = "cache-control"

.field public static final m:Ljava/lang/String; = "max-age"

.field public static final n:Ljava/lang/String; = "statics-global"

.field public static final o:Ljava/lang/String; = "statics01-global"


# instance fields
.field public a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

.field public b:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

.field public c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

.field public d:Lcom/gpc/operations/database/IDataBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/operations/database/IDataBase<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/gpc/resourcestorage/OPSImageSizeType;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/database/IDataBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/database/IDataBase<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getResourceStorageMediaPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/y;->g:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v0

    const-string v1, "statics-global"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getStaticsService(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/y;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v0

    const-string v1, "statics01-global"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getStaticsService(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/y;->b:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 5
    iput-object p1, p0, Lcom/gpc/ops/y;->d:Lcom/gpc/operations/database/IDataBase;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/ops/y;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/ops/y;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/ops/y;)Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/ops/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/ops/y;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/gpc/ops/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/ops/y;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/resourcestorage/OPSImageSizeType;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeSmall:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne p1, v0, :cond_0

    .line 4
    const-string p1, "/-/small"

    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeMedium:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne p1, v0, :cond_1

    .line 7
    const-string p1, "/-/medium"

    return-object p1

    .line 9
    :cond_1
    sget-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeLarge:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne p1, v0, :cond_2

    .line 10
    const-string p1, "/-/large"

    return-object p1

    .line 12
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    const-string v0, "cache-control"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "max-age"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 46
    aget-object p1, p1, v0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getValidityPeriod maxAge= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceDownloadHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 11

    .line 13
    iget-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getFileKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/ops/y;->e:Lcom/gpc/resourcestorage/OPSImageSizeType;

    invoke-virtual {p0, v1}, Lcom/gpc/ops/y;->a(Lcom/gpc/resourcestorage/OPSImageSizeType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "really downLoadImage fileName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResourceDownloadHelper"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/gpc/ops/y;->e:Lcom/gpc/resourcestorage/OPSImageSizeType;

    sget-object v3, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeSmall:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne v1, v3, :cond_0

    .line 18
    iget-object v1, p0, Lcom/gpc/ops/y;->b:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "small_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v3, "OPSImageSizeSmall use service01"

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v7, v0

    move-object v4, v1

    goto :goto_1

    .line 21
    :cond_0
    sget-object v3, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeMedium:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne v1, v3, :cond_1

    .line 22
    iget-object v1, p0, Lcom/gpc/ops/y;->b:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "medium_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v3, "OPSImageSizeMedium use service01"

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-object v3, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeLarge:Lcom/gpc/resourcestorage/OPSImageSizeType;

    if-ne v1, v3, :cond_2

    .line 26
    iget-object v1, p0, Lcom/gpc/ops/y;->b:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "large_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v3, "OPSImageSizeLarge use service01"

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/gpc/ops/y;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    .line 31
    const-string v3, "downloadImage use service"

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getFileKey()Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v5, v0

    .line 37
    iget-object v8, p0, Lcom/gpc/ops/y;->g:Ljava/lang/String;

    new-instance v9, Lcom/gpc/ops/y$c;

    invoke-direct {v9, p0}, Lcom/gpc/ops/y$c;-><init>(Lcom/gpc/ops/y;)V

    new-instance v10, Lcom/gpc/ops/y$d;

    invoke-direct {v10, p0}, Lcom/gpc/ops/y$d;-><init>(Lcom/gpc/ops/y;)V

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->downloadFileRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public final b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/y;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    iget-object v1, p0, Lcom/gpc/ops/y;->f:Ljava/lang/String;

    new-instance v2, Lcom/gpc/ops/y$b;

    invoke-direct {v2, p0}, Lcom/gpc/ops/y$b;-><init>(Lcom/gpc/ops/y;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->headRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public final c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/y;->d:Lcom/gpc/operations/database/IDataBase;

    new-instance v1, Lcom/gpc/operations/database/dao/bean/DBResource;

    iget-object v2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v1, v2}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/database/IDataBase;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/database/dao/bean/DBResource;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/operations/database/dao/bean/DBResource;->getOPSResource()Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setUniqueIdentifier(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    const-string v1, "findOrDownLoad file.exists"

    const-string v2, "ResourceDownloadHelper"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setProgress(F)V

    .line 12
    iget-object v1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v1, v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setLocalPath(Ljava/lang/String;)V

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    iget-object v1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v1

    iget-object v3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    const-string v1, ""

    invoke-static {v2, v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/ops/y;->a()V

    return-void
.end method

.method public final d()Z
    .locals 4

    .line 2
    const-string v0, "isNeedRequestEx"

    const-string v1, "ResourceDownloadHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/y;->d:Lcom/gpc/operations/database/IDataBase;

    new-instance v2, Lcom/gpc/operations/database/dao/bean/DBResource;

    iget-object v3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v2, v3}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {v0, v2}, Lcom/gpc/operations/database/IDataBase;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/database/dao/bean/DBResource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/operations/database/dao/bean/DBResource;->getOPSResource()Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    .line 8
    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file.exists(): "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isNeedRequest resource:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ;result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y;->d:Lcom/gpc/operations/database/IDataBase;

    new-instance v1, Lcom/gpc/operations/database/dao/bean/DBResource;

    iget-object v2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v1, v2}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/database/IDataBase;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/database/dao/bean/DBResource;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/operations/database/dao/bean/DBResource;->getOPSResource()Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    .line 6
    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->isValidityPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ResourceDownloadHelper"

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file.exists(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedRequest resource:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ;result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/y;->d:Lcom/gpc/operations/database/IDataBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/gpc/operations/database/dao/bean/DBResource;

    iget-object v2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v1, v2}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/database/IDataBase;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method public setResourceDownloadListener(Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    return-void
.end method

.method public setResourceDownloadListener(Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/ops/y$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/ops/y$a;-><init>(Lcom/gpc/ops/y;Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;)V

    iput-object v0, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeOriginal:Lcom/gpc/resourcestorage/OPSImageSizeType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/ops/y;->start(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/resourcestorage/OPSImageSizeType;)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/resourcestorage/OPSImageSizeType;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start downloadKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceDownloadHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start image size type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    if-nez v0, :cond_0

    .line 5
    const-string p1, "listener is null"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 9
    const-string p1, "downloadKey is null"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    const-string p2, "700203"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 17
    :cond_1
    iput-object p3, p0, Lcom/gpc/ops/y;->e:Lcom/gpc/resourcestorage/OPSImageSizeType;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/gpc/ops/y;->a(Lcom/gpc/resourcestorage/OPSImageSizeType;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 19
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;-><init>()V

    iput-object v0, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    .line 20
    invoke-virtual {v0, p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setFileKey(Ljava/lang/String;)V

    .line 21
    iget-object p3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p3, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setResourceId(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    sget-object p3, Lcom/gpc/resourcestorage/bean/OPSUploadType;->Image:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {p1, p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 23
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "%s?_v=%s"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/ops/y;->f:Ljava/lang/String;

    .line 24
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gpc/ops/y;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/ops/y;->f:Ljava/lang/String;

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/ops/y;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    const-string p1, "isCacheExist ResourceDownloadExListener"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    iget-object p2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;->onDownloadHadCache(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/ops/y;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/gpc/ops/y;->b()V

    return-void

    .line 39
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setProgress(F)V

    .line 40
    iget-object p1, p0, Lcom/gpc/ops/y;->h:Lcom/gpc/resourcestorage/listener/ResourceDownloadHadCacheExListener;

    iget-object p2, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p2}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/ops/y;->c:Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p3}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResource()Lcom/gpc/resourcestorage/OPSResource;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;->onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 42
    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
