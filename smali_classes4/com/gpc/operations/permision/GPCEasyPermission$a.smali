.class public Lcom/gpc/operations/permision/GPCEasyPermission$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/permision/GPCEasyPermission;->setRequestPermissionResultListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

.field public final synthetic b:Lcom/gpc/operations/permision/GPCEasyPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/permision/GPCEasyPermission;Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->b:Lcom/gpc/operations/permision/GPCEasyPermission;

    iput-object p2, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotoPermissionSettingPage(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;->onGotoPermissionSettingPage()V

    return-void
.end method

.method public onPermissionDenied(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;->onPermissionDenied()V

    return-void
.end method

.method public onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;->onPermissionDeniedAndNoAsked()V

    return-void
.end method

.method public onPermissionGranted(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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
    iget-object p1, p0, Lcom/gpc/operations/permision/GPCEasyPermission$a;->a:Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;->onPermissionGranted()V

    return-void
.end method
