.class public final Lcom/gpc/sdk/misc/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/b;->requestStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/b;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/b$e;->a:Lcom/gpc/sdk/misc/b;

    iput-object p2, p0, Lcom/gpc/sdk/misc/b$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-string p2, "320104"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    .line 9
    new-instance p1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    const-string v1, "e"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320101"

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
    const-string v0, "320103"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "320102"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$e;->a:Lcom/gpc/sdk/misc/b;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/b;->c(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/misc/b$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const-string v2, "noneException()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void

    :catch_0
    move-exception p1

    .line 15
    const-string v0, "GPCAgreementSigning"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$e;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    .line 17
    const-string v0, "20"

    const/16 v1, 0x1389

    const-string v2, "320103"

    invoke-static {v2, v0, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "instantiatedException(\n \u2026                        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method
