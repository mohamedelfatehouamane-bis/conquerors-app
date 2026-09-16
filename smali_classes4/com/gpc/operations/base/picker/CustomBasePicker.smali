.class public abstract Lcom/gpc/operations/base/picker/CustomBasePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/picker/IPicker;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomPicker"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected currentItemId:Ljava/lang/String;

.field protected currentLimitCount:I

.field protected currentMaxUploadSize:J

.field protected easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    .line 3
    new-instance p1, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    invoke-direct {p1}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;-><init>()V

    new-instance v0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;

    invoke-direct {v0, p0}, Lcom/gpc/operations/base/picker/CustomBasePicker$a;-><init>(Lcom/gpc/operations/base/picker/CustomBasePicker;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->requestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->build()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    return-void
.end method


# virtual methods
.method public abstract getMediaPermissionType()Lcom/gpc/operations/permision/GPCMediaPermissionType;
.end method

.method public abstract getPermissionsRequestCode()I
.end method

.method public abstract getRequestCode()I
.end method

.method public hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    const-string v0, "CustomPicker"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_4

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "TYPE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    const-string p1, "image"

    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "video"

    .line 10
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "photos"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 11
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "item_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    new-instance p3, Lcom/gpc/operations/base/picker/PickResult;

    invoke-direct {p3}, Lcom/gpc/operations/base/picker/PickResult;-><init>()V

    .line 20
    sget-object v0, Lcom/gpc/operations/base/picker/PickResult$Status;->SUCCESS:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {p3, v0}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 21
    invoke-virtual {p3, p1}, Lcom/gpc/operations/base/picker/PickResult;->setType(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, p2}, Lcom/gpc/operations/base/picker/PickResult;->setFileBeans(Ljava/util/List;)V

    return-object p3

    .line 23
    :cond_2
    :goto_1
    new-instance p2, Lcom/gpc/operations/base/picker/PickResult;

    invoke-direct {p2}, Lcom/gpc/operations/base/picker/PickResult;-><init>()V

    .line 24
    sget-object p3, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {p2, p3}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 25
    invoke-virtual {p2, p1}, Lcom/gpc/operations/base/picker/PickResult;->setType(Ljava/lang/String;)V

    return-object p2

    .line 37
    :cond_3
    new-instance p1, Lcom/gpc/operations/base/picker/PickResult;

    invoke-direct {p1}, Lcom/gpc/operations/base/picker/PickResult;-><init>()V

    .line 38
    sget-object p2, Lcom/gpc/operations/base/picker/PickResult$Status;->CANCEL:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {p1, p2}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    iget-object v1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/gpc/operations/permision/GPCEasyPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public abstract openPicker()V
.end method

.method public pickup(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentMaxUploadSize:J

    .line 2
    iput p3, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentLimitCount:I

    .line 3
    iput-object p4, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentItemId:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    iget-object p2, p0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getMediaPermissionType()Lcom/gpc/operations/permision/GPCMediaPermissionType;

    move-result-object p3

    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getPermissionsRequestCode()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestMediaPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method
