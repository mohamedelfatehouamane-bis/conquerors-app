.class public Lcom/gpc/sdk/permision/impl/GPCDefaultPermission;
.super Lcom/gpc/sdk/permision/impl/GPCPermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/impl/GPCPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoAppPermissionSettingPage(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    return-void
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/sdk/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

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
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method
