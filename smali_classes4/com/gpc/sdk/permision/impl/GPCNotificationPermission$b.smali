.class public Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->d:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iput-object p2, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->b:I

    iput-object p4, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->d:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iget-object v0, v0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->b:I

    iget-object v3, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->d:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iget-object v1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->d:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iget-object v0, v0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->b:I

    iget-object v3, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$b;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;->onGotoPermissionSettingPage(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method
