.class Lcom/SwitchsToGmailLoginActivity$1;
.super Ljava/lang/Object;
.source "SwitchsToGmailLoginActivity.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/SwitchsToGmailLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/GetCredentialResponse;",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/SwitchsToGmailLoginActivity;


# direct methods
.method public static synthetic $r8$lambda$0lLwOs7iakREL-qNS9EE-DsDreY(Lcom/SwitchsToGmailLoginActivity$1;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/SwitchsToGmailLoginActivity$1;->lambda$onResult$0(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method

.method constructor <init>(Lcom/SwitchsToGmailLoginActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/SwitchsToGmailLoginActivity$1;->this$0:Lcom/SwitchsToGmailLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResult$0(Landroidx/credentials/GetCredentialResponse;)V
    .locals 4

    .line 57
    const-string v0, "SwitchGoogle"

    .line 0
    const-string v1, "GoogleIdToken: "

    .line 57
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    .line 58
    const-string v2, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    invoke-virtual {p1}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/SwitchsToGmailLoginActivity$1;->this$0:Lcom/SwitchsToGmailLoginActivity;

    sget-object v2, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->ID_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    invoke-static {v1, p1, v2}, Lcom/SwitchsToGmailLoginActivity;->-$$Nest$mswitchLoginByGoogleAccount(Lcom/SwitchsToGmailLoginActivity;Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/SwitchsToGmailLoginActivity$1;->this$0:Lcom/SwitchsToGmailLoginActivity;

    invoke-virtual {p1}, Lcom/SwitchsToGmailLoginActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchGoogle"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/SwitchsToGmailLoginActivity$1;->this$0:Lcom/SwitchsToGmailLoginActivity;

    invoke-virtual {p1}, Lcom/SwitchsToGmailLoginActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-virtual {p0, p1}, Lcom/SwitchsToGmailLoginActivity$1;->onError(Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/GetCredentialResponse;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/SwitchsToGmailLoginActivity$1;->this$0:Lcom/SwitchsToGmailLoginActivity;

    new-instance v1, Lcom/SwitchsToGmailLoginActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/SwitchsToGmailLoginActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/SwitchsToGmailLoginActivity$1;Landroidx/credentials/GetCredentialResponse;)V

    invoke-virtual {v0, v1}, Lcom/SwitchsToGmailLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/SwitchsToGmailLoginActivity$1;->onResult(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method
