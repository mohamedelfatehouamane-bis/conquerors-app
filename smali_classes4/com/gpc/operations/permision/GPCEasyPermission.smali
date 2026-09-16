.class public Lcom/gpc/operations/permision/GPCEasyPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/permision/GPCEasyPermission$Builder;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/gpc/operations/permision/GPCEasyPermission;


# instance fields
.field private defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

.field private mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

.field private notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-direct {v0}, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    .line 4
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-direct {v0}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    .line 5
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-direct {v0}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    .line 6
    new-instance v0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/permision/GPCEasyPermission;->setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/operations/permision/GPCEasyPermission$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/permision/GPCEasyPermission;-><init>()V

    return-void
.end method

.method public static sharedInstance()Lcom/gpc/operations/permision/GPCEasyPermission;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/permision/GPCEasyPermission;->sInstance:Lcom/gpc/operations/permision/GPCEasyPermission;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/gpc/operations/permision/GPCEasyPermission;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/gpc/operations/permision/GPCEasyPermission;->sInstance:Lcom/gpc/operations/permision/GPCEasyPermission;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/gpc/operations/permision/GPCEasyPermission;

    invoke-direct {v1}, Lcom/gpc/operations/permision/GPCEasyPermission;-><init>()V

    sput-object v1, Lcom/gpc/operations/permision/GPCEasyPermission;->sInstance:Lcom/gpc/operations/permision/GPCEasyPermission;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/gpc/operations/permision/GPCEasyPermission;->sInstance:Lcom/gpc/operations/permision/GPCEasyPermission;

    return-object v0
.end method


# virtual methods
.method public gotoAppPermissionSettingPage(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    return-void
.end method

.method public handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public hasNotificationPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->hasNotificationPermission(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasReadMediaPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->hasReadMediaPermission(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public isFullAccessImage(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->isFullAccessImage(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isFullAccessImageAndVideo(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->isFullAccessImageAndVideo(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public requestMediaPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->requestMediaPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method

.method public requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method

.method public requestNotificationPermission(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x1010

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestNotificationPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method public requestNotificationPermission(Landroid/app/Activity;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->requestNotificationPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method public varargs requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCDefaultPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method

.method public setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    return-void
.end method

.method public setRequestPermissionResultListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/gpc/operations/permision/GPCEasyPermission$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/permision/GPCEasyPermission$a;-><init>(Lcom/gpc/operations/permision/GPCEasyPermission;Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V

    .line 22
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    .line 24
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->defaultPermission:Lcom/gpc/operations/permision/impl/GPCDefaultPermission;

    invoke-virtual {p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    return-void
.end method

.method public setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->mediaPermission:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/GPCEasyPermission;->notificationPermission:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V

    return-void
.end method
