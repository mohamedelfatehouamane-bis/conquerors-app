.class public final Lcom/gpc/sdk/misc/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/b;->requestGuardianVerificationState(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/b;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/b$d;->a:Lcom/gpc/sdk/misc/b;

    iput-object p2, p0, Lcom/gpc/sdk/misc/b$d;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "320604"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/misc/b$d;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320601"

    const-string v1, "20"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/16 v2, 0xbb8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xfa0

    if-eq p1, v2, :cond_1

    const/16 v2, 0x1770

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1388

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1389

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "320603"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "320602"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$d;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$d;->a:Lcom/gpc/sdk/misc/b;

    invoke-static {v0, p1}, Lcom/gpc/sdk/misc/b;->a(Lcom/gpc/sdk/misc/b;Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$d;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    return-void
.end method
