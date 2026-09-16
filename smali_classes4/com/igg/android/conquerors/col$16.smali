.class Lcom/igg/android/conquerors/col$16;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->signIn()V
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
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method public static synthetic $r8$lambda$6Pqr5B8Wpv3xsZMfJqnP8A_uHf4(Lcom/igg/android/conquerors/col$16;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col$16;->lambda$onResult$0(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method

.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/igg/android/conquerors/col$16;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResult$0(Landroidx/credentials/GetCredentialResponse;)V
    .locals 4

    .line 1169
    const-string v0, "log---"

    .line 0
    const-string v1, "Google login: GoogleIdToken: "

    .line 1169
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    .line 1170
    const-string v2, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    invoke-virtual {p1}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    :try_start_0
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    .line 1174
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object p1, p0, Lcom/igg/android/conquerors/col$16;->this$0:Lcom/igg/android/conquerors/col;

    iget-object p1, p1, Lcom/igg/android/conquerors/col;->productHelper:Lcom/ProductHelper;

    invoke-virtual {p1}, Lcom/ProductHelper;->initPayV2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google login: failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1180
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/jniCallback;->retBuyProduct(IJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 4

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google login: failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "log---"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1190
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/jniCallback;->retBuyProduct(IJI)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 1165
    check-cast p1, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col$16;->onError(Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/GetCredentialResponse;)V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/igg/android/conquerors/col$16;->this$0:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/col$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/igg/android/conquerors/col$16$$ExternalSyntheticLambda0;-><init>(Lcom/igg/android/conquerors/col$16;Landroidx/credentials/GetCredentialResponse;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1165
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col$16;->onResult(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method
