.class public Lcom/gpc/sdk/misc/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/x;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/x$b;->b:Lcom/gpc/sdk/misc/x;

    iput-object p2, p0, Lcom/gpc/sdk/misc/x$b;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 2

    const/4 p3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "UserGeneratedContentService"

    const-string v1, "request is error."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generatorV2(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 6
    const-string p2, "381105"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/misc/x$b;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    return-void

    .line 12
    :cond_0
    sget-object p2, Lcom/gpc/sdk/blacklistedword/GPCUGCErrorCode;->UGC_GET_USER_POLICY:Lcom/gpc/sdk/error/GPCExceptionMapping;

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCExceptionMapping;->generate(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/gpc/sdk/misc/x$b;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    if-eqz p2, :cond_2

    .line 14
    invoke-interface {p2, p1, p3}, Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    return-void

    .line 19
    :cond_1
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generatorV2(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 20
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;-><init>(Lorg/json/JSONObject;)V

    .line 22
    iget-object p2, p0, Lcom/gpc/sdk/misc/x$b;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    if-eqz p2, :cond_2

    .line 23
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 26
    const-string p1, "381104"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/gpc/sdk/misc/x$b;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    if-eqz p2, :cond_2

    .line 28
    invoke-interface {p2, p1, p3}, Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    :cond_2
    return-void
.end method
