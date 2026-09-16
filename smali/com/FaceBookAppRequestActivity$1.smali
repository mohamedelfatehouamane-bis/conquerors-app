.class Lcom/FaceBookAppRequestActivity$1;
.super Ljava/lang/Object;
.source "FaceBookAppRequestActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/FaceBookAppRequestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/FaceBookAppRequestActivity;


# direct methods
.method constructor <init>(Lcom/FaceBookAppRequestActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 86
    const-string v0, "FaceBookRequest"

    const-string v1, "shareDialog onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/FaceBookAppRequestActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/jniCallback;->onFacebookAppshareCallback(I)V

    .line 89
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {v0}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shareDialog onError"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBookRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->printStackTrace()V

    .line 96
    invoke-static {}, Lcom/FaceBookAppRequestActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    iget-object v0, v0, Lcom/FaceBookAppRequestActivity;->linkContent:Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-static {p1}, Lcom/FaceBookAppRequestActivity;->-$$Nest$fgetshareDialog(Lcom/FaceBookAppRequestActivity;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    iget-object v0, v0, Lcom/FaceBookAppRequestActivity;->linkContent:Lcom/facebook/share/model/ShareLinkContent;

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 99
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/FaceBookAppRequestActivity;->linkContent:Lcom/facebook/share/model/ShareLinkContent;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Lcom/jniCallback;->onFacebookAppshareCallback(I)V

    .line 103
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {p1}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/FaceBookAppRequestActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Lcom/jniCallback;->onFacebookAppshareCallback(I)V

    .line 81
    iget-object p1, p0, Lcom/FaceBookAppRequestActivity$1;->this$0:Lcom/FaceBookAppRequestActivity;

    invoke-virtual {p1}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/FaceBookAppRequestActivity$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
