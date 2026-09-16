.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->terminate(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ssoTokenException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 7
    const-string p2, "320505"

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 14
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    const-string v0, "exForSSOToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->access$getService$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;->terminate(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V

    return-void
.end method
