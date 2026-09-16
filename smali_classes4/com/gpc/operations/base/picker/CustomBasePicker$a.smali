.class public Lcom/gpc/operations/base/picker/CustomBasePicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/picker/CustomBasePicker;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/base/picker/CustomBasePicker;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/picker/CustomBasePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotoPermissionSettingPage(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getPermissionsRequestCode()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 2
    const-string p1, "CustomPicker"

    const-string p2, "onGotoPermissionSettingPage"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPermissionDenied(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getPermissionsRequestCode()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 2
    const-string p1, "CustomPicker"

    const-string p2, "onPermissionDenied"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getPermissionsRequestCode()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 2
    const-string p1, "CustomPicker"

    const-string p2, "onPermissionsDismissAsk"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;->getPermissionsRequestCode()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 2
    const-string p1, "CustomPicker"

    const-string p2, "onPermissionGranted"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/base/picker/CustomBasePicker$a;->a:Lcom/gpc/operations/base/picker/CustomBasePicker;

    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/CustomBasePicker;->openPicker()V

    :cond_0
    return-void
.end method
