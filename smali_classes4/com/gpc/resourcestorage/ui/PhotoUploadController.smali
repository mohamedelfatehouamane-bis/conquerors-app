.class public Lcom/gpc/resourcestorage/ui/PhotoUploadController;
.super Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "PhotoUploadController"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/gpc/ops/l;

.field public c:Lcom/gpc/operations/permision/GPCEasyPermission;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)Lcom/gpc/operations/permision/GPCEasyPermission;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->c:Lcom/gpc/operations/permision/GPCEasyPermission;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 38
    const-string v0, "3"

    invoke-static {p0, v0, p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    const-class v1, Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    sget v1, Lcom/gpc/operations/utils/Constant$PhotoUpload;->LIMIT_COUNT:I

    const-string v2, "limit_select_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string p1, "UPLOADER_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 6
    const-string v0, "0"

    invoke-static {p0, v0, p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->initPhotoData()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b:Lcom/gpc/ops/l;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/l;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 4
    new-instance v0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;-><init>()V

    new-instance v1, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;

    invoke-direct {v1, p0}, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;-><init>(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->requestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->build()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->c:Lcom/gpc/operations/permision/GPCEasyPermission;

    .line 37
    sget-object v1, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    sget v2, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestMediaPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b:Lcom/gpc/ops/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/gpc/ops/l;->a(Ljava/util/ArrayList;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public gotoAuthorize(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->c:Lcom/gpc/operations/permision/GPCEasyPermission;

    sget-object p2, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-virtual {p1, p0, p2, v0}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->init()V

    .line 2
    const-string v0, "init"

    const-string v1, "PhotoUploadController"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "UPLOADER_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "uploadKey:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->getResourceUploader(Ljava/lang/String;)Lcom/gpc/ops/l;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b:Lcom/gpc/ops/l;

    .line 6
    invoke-virtual {p0}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a()V

    .line 7
    invoke-static {p0}, Lcom/gpc/photoselector/util/ImageLoaderHelper;->initImageLoader(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PHOTO_SELECT_CROP:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "PhotoUploadController"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onPhotoSelectCancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelectCancel()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPhotoSelectFinish(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelectFinish(Ljava/util/ArrayList;)V

    .line 2
    new-instance v0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;-><init>(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/gpc/operations/utils/ExcutorUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPhotoSelected(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelected(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 2
    invoke-static {p0, p1}, Lcom/gpc/resourcestorage/ui/PhotoCropController;->a(Landroid/app/Activity;Lcom/gpc/photoselector/model/PhotoModel;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->c:Lcom/gpc/operations/permision/GPCEasyPermission;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gpc/operations/permision/GPCEasyPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
