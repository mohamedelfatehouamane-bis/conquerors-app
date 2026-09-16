.class public Lcom/gpc/sdk/permision/impl/GPCMediaPermission;
.super Lcom/gpc/sdk/permision/impl/GPCPermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCPermission;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->requestReadMediaPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method private getReadMediaPermissionGroup()[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 2
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 4
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private requestReadMediaPermission(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/permision/impl/GPCPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasReadMediaPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public permissionDenied(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public permissionGranted(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getMediaNoAskedDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$a;-><init>(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$b;-><init>(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILjava/util/List;)V

    .line 35
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;->showNoAskedMediaUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_1
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->hasReadMediaPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getMediaRequestDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$c;-><init>(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 18
    :cond_1
    new-instance v0, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCMediaPermission$d;-><init>(Lcom/gpc/sdk/permision/impl/GPCMediaPermission;Landroid/app/Activity;I)V

    .line 29
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;->showRequestMediaUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_2
    return-void
.end method
