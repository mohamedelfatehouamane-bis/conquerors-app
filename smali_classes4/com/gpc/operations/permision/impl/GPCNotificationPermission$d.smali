.class public Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->requestNotificationPermission(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->c:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    iput-object p2, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->c:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    iget-object v1, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->b:I

    invoke-virtual {v0}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->c:Lcom/gpc/operations/permision/impl/GPCNotificationPermission;

    iget-object v1, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/gpc/operations/permision/impl/GPCNotificationPermission$d;->b:I

    invoke-virtual {v0}, Lcom/gpc/operations/permision/impl/GPCNotificationPermission;->getNotificationPermissionGroup()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/operations/permision/impl/GPCPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method
