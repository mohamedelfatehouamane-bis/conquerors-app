.class public Lcom/gpc/sdk/permision/GPCEasyPermission$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/permision/GPCEasyPermission;->setRequestPermissionResultListener(Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

.field public final synthetic b:Lcom/gpc/sdk/permision/GPCEasyPermission;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/permision/GPCEasyPermission;Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->b:Lcom/gpc/sdk/permision/GPCEasyPermission;

    iput-object p2, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

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
    iget-object p1, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;->onGotoPermissionSettingPage()V

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
    iget-object p1, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;->onPermissionDenied()V

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
    iget-object p1, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;->onPermissionDeniedAndNoAsked()V

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
    iget-object p1, p0, Lcom/gpc/sdk/permision/GPCEasyPermission$a;->a:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;

    invoke-interface {p1}, Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;->onPermissionGranted()V

    return-void
.end method
