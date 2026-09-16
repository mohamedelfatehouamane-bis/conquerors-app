.class public Lcom/gpc/sdk/misc/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c;->checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

.field public final synthetic c:Lcom/gpc/sdk/misc/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$e;->c:Lcom/gpc/sdk/misc/c;

    iput-object p2, p0, Lcom/gpc/sdk/misc/c$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "checkCOPPAStatus onBusinessError:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AgreementSigningServiceImplV2"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p2, "321104"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCOPPAStatus onFail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgreementSigningServiceImplV2"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "321101"

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

    .line 7
    :cond_0
    const-string v0, "321103"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "321102"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "popUpUrl"

    const-string v1, ""

    const-string v2, "popUp"

    const-string v3, "checkCOPPAStatus popUpUrl"

    const-string v4, "checkCOPPAStatus popUp"

    .line 1
    const-string v5, "checkCOPPAStatus onSuccess"

    const-string v6, "AgreementSigningServiceImplV2"

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v5, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;

    invoke-direct {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;-><init>()V

    .line 4
    iget-object v7, p0, Lcom/gpc/sdk/misc/c$e;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->setSSOToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->setPopUp(I)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->getPopUp()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->setPopUpUrl(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->getPopUpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-interface {p1, v5}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;)V

    return-void

    .line 18
    :cond_2
    const-string v0, "checkCOPPAStatus onSuccess business error"

    invoke-static {v6, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    const-string v2, "321104"

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-static {v2, v1, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    const-string v0, "checkCOPPAStatus json Exception:"

    invoke-static {v6, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    const-string p1, "321103"

    const-string v0, "20"

    invoke-static {p1, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
