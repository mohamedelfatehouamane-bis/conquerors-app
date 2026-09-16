.class public Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mediaNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

.field private mediaRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

.field private noAskedNotificationUIEnable:Z

.field private notificationNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

.field private notificationRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

.field private permissionCustomMediaUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

.field private permissionCustomNotificationUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

.field private uiMode:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;->DEFAULT:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    iput-object v0, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->uiMode:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->noAskedNotificationUIEnable:Z

    return-void
.end method


# virtual methods
.method public UIMode(Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->uiMode:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    return-object p0
.end method

.method public build()Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;
    .locals 14

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;-><init>(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$a;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    const-string v2, "ops_a_request_permissions_dialog_ok"

    const-string v3, "ops_a_request_permissions_dialog_cancel"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    invoke-direct {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;-><init>()V

    .line 4
    const-string v6, "ops_a_request_permissions_dialog_title"

    invoke-static {v6}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 5
    invoke-static {v7}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    .line 6
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 8
    const-string v6, "ops_a_request_permissions_dialog_message"

    invoke-static {v6}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 9
    invoke-static {v3}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 10
    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    const-string v6, "ops_a_request_permissions_tip_dialog_go_setting"

    const-string v7, "ops_a_request_permissions_tip_dialog_know"

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    invoke-direct {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;-><init>()V

    .line 15
    const-string v8, "ops_a_request_permissions_tip_dialog_title"

    invoke-static {v8}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 16
    invoke-static {v9}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v5

    .line 17
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 19
    const-string v8, "ops_a_request_permissions_tip_dialog_message"

    invoke-static {v8}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 20
    invoke-static {v9}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v5

    .line 21
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 23
    invoke-static {v7}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 24
    invoke-static {v6}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    const-string v8, "ops_a_request_notification_permissions_dialog_new_title"

    const-string v9, "\n"

    const-string v10, "ops_a_request_notification_permissions_dialog_title"

    if-nez v1, :cond_2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-static {v10}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 30
    invoke-static {v12}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v5

    .line 31
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v11, "ops_a_request_notification_permissions_dialog_message"

    invoke-static {v11}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v11, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    invoke-direct {v11}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;-><init>()V

    .line 36
    invoke-static {v8}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v11

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 38
    invoke-static {v3}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 39
    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    if-nez v1, :cond_3

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-static {v10}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 45
    invoke-static {v3}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v3, v10, v5

    .line 46
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "ops_a_request_notification_permissions_tip_dialog_message"

    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    .line 50
    invoke-static {v3}, Lcom/gpc/operations/utils/PackageHelperKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 51
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v2, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    invoke-direct {v2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;-><init>()V

    .line 54
    invoke-static {v8}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 56
    invoke-static {v7}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 57
    invoke-static {v6}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->uiMode:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$102(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;)Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    .line 61
    iget-boolean v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->noAskedNotificationUIEnable:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$202(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Z)Z

    .line 62
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->permissionCustomMediaUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$302(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;)Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    .line 63
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->permissionCustomNotificationUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$402(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;)Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    .line 64
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$502(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 65
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$602(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 66
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$702(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    .line 67
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->access$802(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    return-object v0
.end method

.method public mediaNoAskedInfo(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    return-object p0
.end method

.method public mediaRequestInfo(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->mediaRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    return-object p0
.end method

.method public noAskedNotificationUIEnable(Z)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->noAskedNotificationUIEnable:Z

    return-object p0
.end method

.method public notificationNoAskedInfo(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationNoAskedDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    return-object p0
.end method

.method public notificationRequestInfo(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->notificationRequestDialog:Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    return-object p0
.end method

.method public onShowCustomMediaUI(Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->permissionCustomMediaUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    return-object p0
.end method

.method public onShowCustomNotificationUI(Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->permissionCustomNotificationUI:Lcom/gpc/operations/permision/listener/OnShowPermissionCustomNotificationUI;

    return-object p0
.end method
