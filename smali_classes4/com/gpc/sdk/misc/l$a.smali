.class public final Lcom/gpc/sdk/misc/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/l;->report(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/l$a;->a:Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "370104"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/misc/l$a;->a:Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;->onFinish(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "370101"

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

    .line 6
    :cond_0
    const-string v0, "370103"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    const-string v0, "370102"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/l$a;->a:Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;->onFinish(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/misc/l$a;->a:Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "noneException()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;->onFinish(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
