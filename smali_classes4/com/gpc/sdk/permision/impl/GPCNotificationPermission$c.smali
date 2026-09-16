.class public Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->requestPermission(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->c:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iput-object p2, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public negativeButtonClick(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->c:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->b:I

    invoke-static {p1}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->access$000(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->permissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    return-void
.end method

.method public positiveButtonClick(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->c:Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;

    iget-object v0, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission$c;->b:I

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;->access$100(Lcom/gpc/sdk/permision/impl/GPCNotificationPermission;Landroid/app/Activity;I)V

    return-void
.end method
