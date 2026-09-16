.class public Lcom/gpc/resourcestorage/ui/PickerController;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "PickerController"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/operations/base/picker/PickerManager;

.field public e:Lcom/gpc/ops/l;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->a:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/gpc/resourcestorage/ui/PickerController;)Lcom/gpc/ops/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "3"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-class v1, Lcom/gpc/resourcestorage/ui/PickerController;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    const-string v1, "limit_select_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    const-string p3, "TYPE"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string p1, "UPLOADER_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$PhotoUpload;->LIMIT_COUNT:I

    const-string v1, "0"

    invoke-static {p0, v1, p1, v0}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/gpc/photoselector/util/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerController"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, ""

    const-string v1, "PickerController"

    const-string v2, "pickResult:"

    const-string v3, "onActivityResult requestCode:"

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/gpc/resourcestorage/ui/PickerController;->d:Lcom/gpc/operations/base/picker/PickerManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/gpc/operations/base/picker/PickerManager;->onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 7
    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getStatus()Lcom/gpc/operations/base/picker/PickResult$Status;

    move-result-object p1

    sget-object p2, Lcom/gpc/operations/base/picker/PickResult$Status;->CANCEL:Lcom/gpc/operations/base/picker/PickResult$Status;

    if-ne p1, p2, :cond_1

    .line 8
    const-string p1, "pick CANCEL."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, v4}, Lcom/gpc/ops/l;->a(Ljava/util/ArrayList;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 14
    :cond_1
    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getStatus()Lcom/gpc/operations/base/picker/PickResult$Status;

    move-result-object p1

    sget-object p2, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    if-ne p1, p2, :cond_3

    .line 16
    const-string p1, "pick FAILURE."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/gpc/ops/l;->a()V

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gpc/resourcestorage/ui/PickerController;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "0"

    iget-object p2, p0, Lcom/gpc/resourcestorage/ui/PickerController;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    new-instance p1, Lcom/gpc/resourcestorage/ui/PickerController$a;

    invoke-direct {p1, p0, v3}, Lcom/gpc/resourcestorage/ui/PickerController$a;-><init>(Lcom/gpc/resourcestorage/ui/PickerController;Lcom/gpc/operations/base/picker/PickResult;)V

    invoke-static {p1}, Lcom/gpc/operations/utils/ExcutorUtils;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 41
    :cond_4
    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {v3}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/model/PhotoModel;

    .line 50
    invoke-static {p0, p1}, Lcom/gpc/resourcestorage/ui/PhotoCropController;->a(Landroid/app/Activity;Lcom/gpc/photoselector/model/PhotoModel;)V

    return-void

    .line 51
    :cond_6
    :goto_0
    const-string p1, "pick result is null or size is 0."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    if-eqz p1, :cond_7

    .line 53
    invoke-virtual {p1}, Lcom/gpc/ops/l;->a()V

    .line 55
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_8
    sget v2, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PHOTO_SELECT_CROP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_b

    const/4 p1, -0x1

    if-ne p1, p2, :cond_9

    .line 67
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "PhotoUploadController"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 68
    iget-object p2, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    if-eqz p2, :cond_a

    .line 69
    invoke-virtual {p2, p1}, Lcom/gpc/ops/l;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 72
    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    :cond_9
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    if-eqz p1, :cond_a

    .line 77
    invoke-virtual {p1, v4}, Lcom/gpc/ops/l;->a(Ljava/util/ArrayList;)V

    .line 81
    :cond_a
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 84
    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    sget v0, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_picker:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "limit_select_count"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->a:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UPLOADER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->c:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", limitSelectCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerController"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "uploadKey:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/resourcestorage/ui/PickerController;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/gpc/photoselector/util/ImageLoaderHelper;->initImageLoader(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/gpc/operations/base/picker/PickerManager;

    invoke-direct {v0, p1, p0}, Lcom/gpc/operations/base/picker/PickerManager;-><init>(ZLandroid/app/Activity;)V

    iput-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->d:Lcom/gpc/operations/base/picker/PickerManager;

    .line 14
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->getResourceUploader(Ljava/lang/String;)Lcom/gpc/ops/l;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->e:Lcom/gpc/ops/l;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    const-string v0, "PickerController"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    const-string v0, "PickerController"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->f:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->d:Lcom/gpc/operations/base/picker/PickerManager;

    iget v1, p0, Lcom/gpc/resourcestorage/ui/PickerController;->a:I

    const-string v2, "1"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/operations/base/picker/PickerManager;->pickupImage(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/gpc/resourcestorage/ui/PickerController;->f:Z

    :cond_0
    return-void
.end method
