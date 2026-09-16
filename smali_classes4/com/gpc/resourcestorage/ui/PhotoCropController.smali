.class public Lcom/gpc/resourcestorage/ui/PhotoCropController;
.super Lcom/gpc/cropper/CropImageActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PhotoCropController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/gpc/resourcestorage/ui/PhotoCropController;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "IMAGE_RESOURCE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    sget p1, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PHOTO_SELECT_CROP:I

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getResourceStorageMediaPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->savadirectory:Ljava/lang/String;

    return-void
.end method

.method public initCropImageOption(Lcom/gpc/cropper/CropImageOptions;)V
    .locals 1

    .line 1
    sget v0, Lcom/gpc/resourcestorage/configuration/OPSGameStorageConfiguration$AvatarUploadConfiguration;->PHOTO_SIZE:I

    if-eqz v0, :cond_0

    .line 3
    iput v0, p1, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    .line 4
    iput v0, p1, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    :cond_0
    return-void
.end method

.method public onCropImageComplete(Lcom/gpc/cropper/CropImageView;Lcom/gpc/cropper/CropImageView$CropResult;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "result.getUri(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/cropper/CropImageView$CropResult;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoCropController"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {p1}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/model/PhotoModel;->setInternalFile(Z)V

    .line 4
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/cropper/CropImageView$CropResult;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v1, "PhotoUploadController"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
