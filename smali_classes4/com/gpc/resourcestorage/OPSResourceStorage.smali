.class public Lcom/gpc/resourcestorage/OPSResourceStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCache()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->getResourceCacheHelper()Lcom/gpc/ops/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/ops/m;->a()V

    return-void
.end method

.method public static getBlueprintUploaderForLocalFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/resourcestorage/OPSResourceUploader;
    .locals 1
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
            "Lcom/gpc/resourcestorage/OPSResourceUploader;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->createUploader(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/ops/l;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloader()Lcom/gpc/resourcestorage/OPSResourceDownloader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->createResourceDownloadHelper()Lcom/gpc/ops/y;

    move-result-object v0

    return-object v0
.end method

.method public static getUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;)Lcom/gpc/resourcestorage/OPSResourceUploader;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/gpc/resourcestorage/OPSResourceStorage;->getUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;)Lcom/gpc/resourcestorage/OPSResourceUploader;

    move-result-object p0

    return-object p0
.end method

.method public static getUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;)Lcom/gpc/resourcestorage/OPSResourceUploader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->createUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;)Lcom/gpc/ops/l;

    move-result-object p0

    return-object p0
.end method

.method public static setCapacity(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->getResourceCacheHelper()Lcom/gpc/ops/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gpc/ops/m;->b(I)V

    return-void
.end method
