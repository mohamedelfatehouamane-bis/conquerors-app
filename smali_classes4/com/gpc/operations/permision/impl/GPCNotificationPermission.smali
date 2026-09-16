.class public Lcom/gpc/operations/permision/impl/GPCNotificationPermission;
.super Lcom/gpc/operations/permision/impl/GPCUIPermission;
.source "SourceFile"


# static fields
.field public static final REQUEST_NOTIFICATION_PERMISSION:I = 0x1010

.field private static final TAG:Ljava/lang/String; = "GPCNotificationPermission"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/permision/impl/GPCUIPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationPermissionGroup()[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 2
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/impl/GPCPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public hasNotificationPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
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
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->isNoAskedNotificationUIEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getNotificationNoAskedDialog()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$a;-><init>(Lcom/gpc/operations/permision/impl/GPCNotificationPermission;Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCPermission;->listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$b;-><init>(Lcom/gpc/operations/permision/impl/GPCNotificationPermission;Landroid/app/Activity;ILjava/util/List;)V

    .line 41
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;->showNoAskedNotificationUI(Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_2
    return-void
.end method

.method public requestNotificationPermission(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->hasNotificationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getNotificationRequestDialog()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$c;-><init>(Lcom/gpc/operations/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 18
    :cond_1
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;-><init>(Lcom/gpc/operations/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V

    .line 29
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;->showRequestNotificationUI(Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_2
    return-void
.end method
