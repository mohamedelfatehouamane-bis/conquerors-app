.class Lcom/igg/android/conquerors/col$17;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->_requestNotifyPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/igg/android/conquerors/col$17;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotoPermissionSettingPage()V
    .locals 2

    .line 1323
    const-string v0, "log---"

    const-string v1, "onGotoPermissionSettingPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionDenied()V
    .locals 2

    .line 1311
    const-string v0, "log---"

    const-string v1, "onPermissionDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionDeniedAndNoAsked()V
    .locals 2

    .line 1317
    const-string v0, "log---"

    const-string v1, "onPermissionDeniedAndNoAsked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 1305
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jniCallback;->retNotifyPermission(I)V

    return-void
.end method
