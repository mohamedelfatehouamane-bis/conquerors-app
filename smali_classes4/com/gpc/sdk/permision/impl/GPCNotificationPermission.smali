.class public Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;
.super Lcom/gpc/sdk/permision/impl/GPCPermission;
.source "SourceFile"


# static fields
.field public static final REQUEST_NOTIFICATION_PERMISSION:I = 0x1010

.field private static final TAG:Ljava/lang/String; = "GPCNotificationPermission"


# instance fields
.field private final KEY_NOTIFICATION_NO_ASKED_DIALOG_TRIGGER:Ljava/lang/String;

.field private final KEY_NOTIFICATION_PERMISSION_DENIED:Ljava/lang/String;

.field private final KEY_SP_NAME_NOTIFICATION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCPermission;-><init>()V

    .line 2
    const-string v0, "gpc-notification"

    iput-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->KEY_SP_NAME_NOTIFICATION:Ljava/lang/String;

    .line 7
    const-string v0, "key_notification_no_asked_dialog_trigger"

    iput-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->KEY_NOTIFICATION_NO_ASKED_DIALOG_TRIGGER:Ljava/lang/String;

    .line 12
    const-string v0, "key_notification_permission_denied"

    iput-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->KEY_NOTIFICATION_PERMISSION_DENIED:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->requestNotificationPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method private getNotificationPermissionGroup()[Ljava/lang/String;
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

.method private requestNotificationPermission(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/permision/impl/GPCPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasNotificationPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

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
    .locals 3
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

    .line 3
    const-string v0, "gpc-notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_notification_permission_denied"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

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
    .locals 5
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
    const-string v0, "gpc-notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    const-string v2, "key_notification_no_asked_dialog_trigger"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3
    const-string v4, "key_notification_permission_denied"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    :cond_0
    if-nez v3, :cond_1

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->isNoAskedNotificationUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getNotificationNoAskedDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$a;-><init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_4

    .line 35
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 39
    :cond_3
    new-instance v0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;-><init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;ILjava/util/List;)V

    .line 55
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 56
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;->showNoAskedNotificationUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_4
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->hasNotificationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "gpc-notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_notification_no_asked_dialog_trigger"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_notification_permission_denied"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getNotificationRequestDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;-><init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$d;-><init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomNotificationUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;->showRequestNotificationUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_2
    return-void
.end method
