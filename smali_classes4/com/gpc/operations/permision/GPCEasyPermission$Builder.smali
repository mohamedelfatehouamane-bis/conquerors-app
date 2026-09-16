.class public Lcom/gpc/operations/permision/GPCEasyPermission$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/permision/GPCEasyPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

.field private listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/gpc/operations/permision/GPCEasyPermission;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/GPCEasyPermission;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission;-><init>(Lcom/gpc/operations/permision/GPCEasyPermission$a;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission;->setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission;->setRequestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)V

    :cond_1
    return-object v0
.end method

.method public configuration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)Lcom/gpc/operations/permision/GPCEasyPermission$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    return-object p0
.end method

.method public requestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)Lcom/gpc/operations/permision/GPCEasyPermission$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;

    return-object p0
.end method
