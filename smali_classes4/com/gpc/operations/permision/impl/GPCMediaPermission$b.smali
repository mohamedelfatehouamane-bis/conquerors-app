.class public Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/permision/impl/GPCMediaPermission;->permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/operations/permision/impl/GPCMediaPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->d:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    iput-object p2, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->b:I

    iput-object p4, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->d:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    iget-object v0, v0, Lcom/gpc/operations/permision/impl/GPCPermission;->listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->b:I

    iget-object v3, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->d:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    iget-object v1, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/impl/GPCPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->d:Lcom/gpc/operations/permision/impl/GPCMediaPermission;

    iget-object v0, v0, Lcom/gpc/operations/permision/impl/GPCPermission;->listener:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->b:I

    iget-object v3, p0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;->onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    :cond_0
    return-void
.end method
