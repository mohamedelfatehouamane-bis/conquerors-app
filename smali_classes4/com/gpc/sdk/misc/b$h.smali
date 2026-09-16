.class public final Lcom/gpc/sdk/misc/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/b;->terminate(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/b$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "320504"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/misc/b$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320501"

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
    const-string v0, "320503"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "320502"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCAgreementSigning"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "noneException()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
