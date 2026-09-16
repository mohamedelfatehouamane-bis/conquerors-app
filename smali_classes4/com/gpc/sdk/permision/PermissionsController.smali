.class public Lcom/gpc/sdk/permision/PermissionsController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;
    .locals 8

    .line 1
    new-instance v0, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    invoke-direct {v0}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;-><init>()V

    .line 2
    const-string v1, "gpc_a_request_notification_permissions_dialog_new_title"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setTitle(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v2, "gpc_a_request_notification_permissions_dialog_title"

    invoke-static {v2}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/gpc/sdk/permision/GPCPackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 6
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v4, "gpc_a_request_notification_permissions_dialog_message"

    invoke-static {v4}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setRequestPermissionText(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {v2}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/gpc/sdk/permision/GPCPackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v7

    .line 14
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "gpc_a_request_notification_permissions_tip_dialog_message"

    invoke-static {v2}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/sdk/permision/GPCPackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v7

    .line 19
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setToSettingPageText(Ljava/lang/String;)V

    .line 22
    const-string v1, "gpc_a_request_permissions_dialog_cancel"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setCancelBtn(Ljava/lang/String;)V

    .line 23
    const-string v1, "gpc_a_request_permissions_dialog_ok"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setGrantBtn(Ljava/lang/String;)V

    .line 24
    const-string v1, "gpc_a_request_permissions_tip_dialog_know"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setKnownBtn(Ljava/lang/String;)V

    .line 25
    const-string v1, "gpc_a_request_permissions_tip_dialog_go_setting"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->setSettingBtn(Ljava/lang/String;)V

    return-object v0
.end method

.method public gotoPermissionSettingPage(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/permision/GPCEasyPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    return-void
.end method

.method public hasPostNotificationsPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/permision/GPCEasyPermission;->hasNotificationPermission(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/permision/GPCEasyPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public requestPostNotificationsPermission(Landroid/app/Activity;Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;-><init>()V

    sget-object v1, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->CUSTOM:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    .line 2
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;->UIMode(Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;)Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;->onShowCustomNotificationUI(Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;)Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;->build()Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    move-result-object p3

    .line 5
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/permision/GPCEasyPermission;->setUIConfiguration(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;)V

    .line 6
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/permision/GPCEasyPermission;->setRequestPermissionResultListener(Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;)V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/sdk/permision/GPCEasyPermission;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/permision/GPCEasyPermission;->requestNotificationPermission(Landroid/app/Activity;)V

    return-void
.end method
