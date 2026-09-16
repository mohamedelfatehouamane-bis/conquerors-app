.class public Lcom/gpc/operations/base/picker/CustomImagePicker;
.super Lcom/gpc/operations/base/picker/CustomBasePicker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomImagePicker"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getMediaPermissionType()Lcom/gpc/operations/permision/GPCMediaPermissionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    return-object v0
.end method

.method public getPermissionsRequestCode()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS:I

    return v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->OPEN_PHOTO_SELECTOR_REQUEST_CODE:I

    return v0
.end method

.method public openPicker()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/picker/CustomBasePicker;->hideKeyboard(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/operations/base/picker/CustomImagePicker$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/picker/CustomImagePicker$a;-><init>(Lcom/gpc/operations/base/picker/CustomImagePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
