.class public Lcom/gpc/resourcestorage/ui/PickerController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/resourcestorage/ui/PickerController;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/base/picker/PickResult;

.field public final synthetic b:Lcom/gpc/resourcestorage/ui/PickerController;


# direct methods
.method public constructor <init>(Lcom/gpc/resourcestorage/ui/PickerController;Lcom/gpc/operations/base/picker/PickResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->b:Lcom/gpc/resourcestorage/ui/PickerController;

    iput-object p2, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->a:Lcom/gpc/operations/base/picker/PickResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->b:Lcom/gpc/resourcestorage/ui/PickerController;

    invoke-static {v0}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Lcom/gpc/resourcestorage/ui/PickerController;)Lcom/gpc/ops/l;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->a:Lcom/gpc/operations/base/picker/PickResult;

    invoke-virtual {v1}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/ops/l;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->b:Lcom/gpc/resourcestorage/ui/PickerController;

    invoke-static {v1}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Lcom/gpc/resourcestorage/ui/PickerController;)Lcom/gpc/ops/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->b:Lcom/gpc/resourcestorage/ui/PickerController;

    invoke-static {v1}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Lcom/gpc/resourcestorage/ui/PickerController;)Lcom/gpc/ops/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/ops/l;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "PickerController"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PickerController$a;->b:Lcom/gpc/resourcestorage/ui/PickerController;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
