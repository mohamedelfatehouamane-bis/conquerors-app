.class public Lcom/gpc/operations/base/picker/CustomMediaPicker;
.super Lcom/gpc/operations/base/picker/CustomBasePicker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomMediaPicker"


# instance fields
.field protected isDegradation:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker;->isDegradation:Z

    return-void
.end method


# virtual methods
.method public getMediaPermissionType()Lcom/gpc/operations/permision/GPCMediaPermissionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->IMAGE_AND_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    return-object v0
.end method

.method public getPermissionsRequestCode()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS_2:I

    return v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->OPEN_PHOTO_SELECTOR_REQUEST_CODE_2:I

    return v0
.end method

.method public openPicker()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/picker/CustomBasePicker;->hideKeyboard(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;-><init>(Lcom/gpc/operations/base/picker/CustomMediaPicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pickup(JILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "allowPickingVideo"

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker;->isDegradation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "CustomMediaPicker"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/gpc/operations/base/picker/CustomBasePicker;->pickup(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
