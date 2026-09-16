.class public Lcom/gpc/operations/base/picker/IntentMediaPicker;
.super Lcom/gpc/operations/base/picker/IntentBasePicker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentMediaPicker"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/base/picker/IntentBasePicker;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getFileMaxSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x6400000

    return-wide v0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentMaxUploadSize:J

    return-wide v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    const-string p1, "video"

    return-object p1
.end method

.method public isFormatValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    const-string p2, "gif"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 10
    :cond_1
    const-string p2, "svg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 14
    :cond_3
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    const-string p1, "mp4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    .line 17
    :cond_5
    :goto_0
    const-string p1, "IntentMediaPicker"

    const-string p2, "mimeType or extension is empty"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PICK_UP_SINGLE_AUDIO:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PICK_UP_MULTIPLE_AUDIO:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/gpc/operations/base/picker/IntentBasePicker;->createPhotoModels(ILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;

    move-result-object p1

    .line 4
    const-string p2, "video"

    invoke-virtual {p1, p2}, Lcom/gpc/operations/base/picker/PickResult;->setType(Ljava/lang/String;)V

    return-object p1
.end method

.method public pickUpMultiple()V
    .locals 4

    .line 1
    const-string v0, "pickUpMultiple"

    const-string v1, "IntentMediaPicker"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    const-string v2, "android.provider.extra.PICK_IMAGES_MAX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 17
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_1
    :goto_0
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "image/*"

    const-string v2, "video/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    sget v2, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PICK_UP_MULTIPLE_AUDIO:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public pickUpSingle()V
    .locals 4

    .line 1
    const-string v0, "pickUpSingle"

    const-string v1, "IntentMediaPicker"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 16
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_1
    :goto_0
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "image/*"

    const-string v2, "video/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    sget v2, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->PICK_UP_SINGLE_AUDIO:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showCountMaxError()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/operations/base/picker/IntentBasePicker;->S_ALLOW_TOAST_FAILED:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/utils/OPSToastUtils;->sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;

    move-result-object v0

    const-string v1, "ops_a_send_file_error_for_intent_file_count_max"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/utils/OPSToastUtils;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showFileFormatIllegalError()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/operations/base/picker/IntentBasePicker;->S_ALLOW_TOAST_FAILED:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/utils/OPSToastUtils;->sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;

    move-result-object v0

    const-string v1, "ops_a_send_file_error_for_intent_format_illegal"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/utils/OPSToastUtils;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showFileTooLargeError()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/operations/base/picker/IntentBasePicker;->S_ALLOW_TOAST_FAILED:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/utils/OPSToastUtils;->sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;

    move-result-object v0

    const-string v1, "ops_a_send_file_error_for_intent_file_too_large"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/utils/OPSToastUtils;->show(Ljava/lang/String;)V

    return-void
.end method
