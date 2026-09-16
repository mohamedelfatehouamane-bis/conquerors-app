.class Lcom/igg/sdk/invite/FacebookFriendActivity$1;
.super Ljava/lang/Object;
.source "FacebookFriendActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/sdk/invite/FacebookFriendActivity;->loginFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;


# direct methods
.method constructor <init>(Lcom/igg/sdk/invite/FacebookFriendActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 72
    const-string v0, "FacebookFriendActivity"

    const-string v1, "loginFacebook onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;

    invoke-virtual {v0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginFacebook onError"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacebookFriendActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;

    invoke-virtual {p1}, Lcom/igg/sdk/invite/FacebookFriendActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;

    invoke-static {p1}, Lcom/igg/sdk/invite/FacebookFriendActivity;->access$000(Lcom/igg/sdk/invite/FacebookFriendActivity;)V

    .line 67
    iget-object p1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->this$0:Lcom/igg/sdk/invite/FacebookFriendActivity;

    invoke-virtual {p1}, Lcom/igg/sdk/invite/FacebookFriendActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/igg/sdk/invite/FacebookFriendActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
