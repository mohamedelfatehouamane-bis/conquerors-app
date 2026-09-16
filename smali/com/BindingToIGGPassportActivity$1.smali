.class Lcom/BindingToIGGPassportActivity$1;
.super Ljava/lang/Object;
.source "BindingToIGGPassportActivity.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BindingToIGGPassportActivity;->bindToGPCPassport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/BindingToIGGPassportActivity;


# direct methods
.method constructor <init>(Lcom/BindingToIGGPassportActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/BindingToIGGPassportActivity$1;->this$0:Lcom/BindingToIGGPassportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    .line 65
    invoke-static {p1, v2}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/BindingToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2, p2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string p2, "114103"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 75
    invoke-static {}, Lcom/BindingToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string p2, "114104"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    invoke-static {}, Lcom/BindingToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {}, Lcom/BindingToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-static {}, Lcom/BindingToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/AccountHelper;->retLoadUser(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/BindingToIGGPassportActivity$1;->this$0:Lcom/BindingToIGGPassportActivity;

    invoke-virtual {p1}, Lcom/BindingToIGGPassportActivity;->finish()V

    return-void
.end method
