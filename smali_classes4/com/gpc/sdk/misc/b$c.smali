.class public final Lcom/gpc/sdk/misc/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/b;->requestAssignedAgreementsForSigned(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/b;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/b$c;->a:Lcom/gpc/sdk/misc/b;

    iput-object p2, p0, Lcom/gpc/sdk/misc/b$c;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "320404"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/misc/b$c;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320401"

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
    const-string v0, "320403"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "320402"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$c;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCAgreementSigning"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$c;->a:Lcom/gpc/sdk/misc/b;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/b;->b(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/gpc/sdk/misc/b$c;->a:Lcom/gpc/sdk/misc/b;

    invoke-virtual {v3, p1}, Lcom/gpc/sdk/misc/b;->d(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    iget-object v1, p0, Lcom/gpc/sdk/misc/b$c;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    const-string v3, "noneException()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V

    return-void

    :catch_0
    move-exception p1

    .line 21
    const-string v0, ""

    invoke-static {v2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$c;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    .line 23
    const-string v0, "20"

    const/16 v2, 0x1389

    const-string v3, "320403"

    invoke-static {v3, v0, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v2, "instantiatedException(\n \u2026                        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1, v0, v1, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V

    return-void
.end method
