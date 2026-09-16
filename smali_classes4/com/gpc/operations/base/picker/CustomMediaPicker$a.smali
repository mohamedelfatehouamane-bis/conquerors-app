.class public Lcom/gpc/operations/base/picker/CustomMediaPicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/picker/CustomMediaPicker;->openPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/base/picker/CustomMediaPicker;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/picker/CustomMediaPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    iget v1, v1, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentLimitCount:I

    const-string v2, "limit_select_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    iget-object v1, v1, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentItemId:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    iget-boolean v2, v1, Lcom/gpc/operations/base/picker/CustomMediaPicker;->isDegradation:Z

    const-string v3, "TYPE"

    if-eqz v2, :cond_0

    .line 6
    const-string v1, "2"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, v1, Lcom/gpc/operations/base/picker/CustomBasePicker;->currentMaxUploadSize:J

    const-string v4, "video_max_size"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    const-string v1, "1"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    iget-object v2, v2, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    const-class v3, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    iget-object v0, p0, Lcom/gpc/operations/base/picker/CustomMediaPicker$a;->a:Lcom/gpc/operations/base/picker/CustomMediaPicker;

    iget-object v0, v0, Lcom/gpc/operations/base/picker/CustomBasePicker;->activity:Landroid/app/Activity;

    sget v2, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->OPEN_PHOTO_SELECTOR_REQUEST_CODE_2:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
