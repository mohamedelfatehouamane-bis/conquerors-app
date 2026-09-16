.class public Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$Builder;
    }
.end annotation


# instance fields
.field private mediaNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

.field private mediaRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

.field private noAskedNotificationUIEnable:Z

.field private notificationNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

.field private notificationRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

.field private permissionCustomMediaUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

.field private permissionCustomNotificationUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

.field private permissionUIMode:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->noAskedNotificationUIEnable:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;)Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionUIMode:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->noAskedNotificationUIEnable:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;)Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionCustomMediaUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;)Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionCustomNotificationUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object p1
.end method


# virtual methods
.method public getMediaNoAskedDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object v0
.end method

.method public getMediaRequestDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object v0
.end method

.method public getNotificationNoAskedDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object v0
.end method

.method public getNotificationRequestDialog()Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-object v0
.end method

.method public getPermissionCustomMediaUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionCustomMediaUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomMediaUI;

    return-object v0
.end method

.method public getPermissionCustomNotificationUI()Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionCustomNotificationUI:Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;

    return-object v0
.end method

.method public getPermissionUIMode()Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionUIMode:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    return-object v0
.end method

.method public isDefaultUI()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionUIMode:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    sget-object v1, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->DEFAULT:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNoAskedNotificationUIEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->noAskedNotificationUIEnable:Z

    return v0
.end method

.method public setMediaNoAskedDialog(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-void
.end method

.method public setMediaRequestDialog(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->mediaRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-void
.end method

.method public setNotificationNoAskedDialog(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationNoAskedDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-void
.end method

.method public setNotificationRequestDialog(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->notificationRequestDialog:Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;

    return-void
.end method

.method public setPermissionUIMode(Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;->permissionUIMode:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    return-void
.end method
