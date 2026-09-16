.class Lcom/FaceBookAppRequestActivity$2;
.super Ljava/lang/Object;
.source "FaceBookAppRequestActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/FaceBookAppRequestActivity;->loginFacebook()V
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
.field final synthetic this$0:Lcom/FaceBookAppRequestActivity;


# direct methods
.method constructor <init>(Lcom/FaceBookAppRequestActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/FaceBookAppRequestActivity$2;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 138
    const-string v0, "FaceBookRequest"

    const-string v1, "facebook_account_oauth_Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity$2;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {v0}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceBookRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$2;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {p1}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity$2;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-static {v0, p1}, Lcom/FaceBookAppRequestActivity;->-$$Nest$mfetchToken(Lcom/FaceBookAppRequestActivity;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$2;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {p1}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/FaceBookAppRequestActivity$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
