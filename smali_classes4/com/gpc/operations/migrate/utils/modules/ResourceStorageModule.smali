.class public Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceStorageModule"


# instance fields
.field private context:Landroid/content/Context;

.field private resourceCacheHelper:Lcom/gpc/ops/m;

.field private resourceUploaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/ops/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addResourceUploader(Ljava/lang/String;Lcom/gpc/ops/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createResourceDownloadHelper()Lcom/gpc/ops/y;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/ops/y;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getDataBaseModule()Lcom/gpc/operations/database/DataBaseModule;

    move-result-object v1

    const-string v2, "OPS_RESOURCE"

    invoke-virtual {v1, v2}, Lcom/gpc/operations/database/DataBaseModule;->getDataBase(Ljava/lang/String;)Lcom/gpc/operations/database/IDataBase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/ops/y;-><init>(Lcom/gpc/operations/database/IDataBase;)V

    return-object v0
.end method

.method public createUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;)Lcom/gpc/ops/l;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/ops/k;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getDataBaseModule()Lcom/gpc/operations/database/DataBaseModule;

    move-result-object v1

    const-string v2, "OPS_RESOURCE"

    invoke-virtual {v1, v2}, Lcom/gpc/operations/database/DataBaseModule;->getDataBase(Ljava/lang/String;)Lcom/gpc/operations/database/IDataBase;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/gpc/ops/k;-><init>(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;Lcom/gpc/operations/database/IDataBase;)V

    return-object v0
.end method

.method public createUploader(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/ops/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/ops/l;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/gpc/ops/k;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getDataBaseModule()Lcom/gpc/operations/database/DataBaseModule;

    move-result-object v1

    const-string v2, "OPS_RESOURCE"

    invoke-virtual {v1, v2}, Lcom/gpc/operations/database/DataBaseModule;->getDataBase(Ljava/lang/String;)Lcom/gpc/operations/database/IDataBase;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/ops/k;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/database/IDataBase;Ljava/util/Map;)V

    return-object v0
.end method

.method public getResourceCacheHelper()Lcom/gpc/ops/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceCacheHelper:Lcom/gpc/ops/m;

    return-object v0
.end method

.method public getResourceUploader(Ljava/lang/String;)Lcom/gpc/ops/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/ops/l;

    return-object p1
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/ops/m;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/ops/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceCacheHelper:Lcom/gpc/ops/m;

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->context:Landroid/content/Context;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeResourceUploader(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeResourceUploader uploadKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceStorageModule"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
