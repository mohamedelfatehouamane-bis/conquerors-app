.class Lcom/igg/android/conquerors/col$15;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->selectGoogleAccount(Z)V
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

    .line 1109
    iput-object p1, p0, Lcom/igg/android/conquerors/col$15;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1112
    :try_start_0
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 1117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1118
    const-string v1, "isSwitch"

    iget-object v2, p0, Lcom/igg/android/conquerors/col$15;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetbGmailIsLogin(Lcom/igg/android/conquerors/col;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    iget-object v1, p0, Lcom/igg/android/conquerors/col$15;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetbGmailIsLogin(Lcom/igg/android/conquerors/col;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    sget-object v1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-class v2, Lcom/SwitchsToGmailLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1121
    sget-object v1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const v2, 0xd96f    # 7.8E-41f

    invoke-virtual {v1, v0, v2}, Lcom/igg/android/conquerors/col;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1124
    :cond_1
    sget-object v1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-class v2, Lcom/SwitchsToGmailLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1125
    sget-object v1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const v2, 0xd970

    invoke-virtual {v1, v0, v2}, Lcom/igg/android/conquerors/col;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
