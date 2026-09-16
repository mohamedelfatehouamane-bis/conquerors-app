.class public Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;


# direct methods
.method public constructor <init>(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

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
    const-string p1, "PhotoUploadController"

    const-string p2, "onGotoPermissionSettingPage"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string p1, "PhotoUploadController"

    const-string p2, "onPermissionDenied"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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
    const-string p1, "PhotoUploadController"

    const-string p2, "onPermissionNoAsked"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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
    const-string p1, "PhotoUploadController"

    const-string p2, "onPermissionGranted"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-static {p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {p1, p2}, Lcom/gpc/operations/permision/GPCEasyPermission;->isFullAccessImage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAuthorizeTip()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->showAuthorizeTip()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$b;->a:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-static {p1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b(Lcom/gpc/resourcestorage/ui/PhotoUploadController;)V

    return-void
.end method
