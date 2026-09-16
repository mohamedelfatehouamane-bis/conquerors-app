.class public Lcom/gpc/sdk/misc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/service/RealNameVerificationService;


# static fields
.field public static final b:Ljava/lang/String; = "RealNameVerificationServiceAGImpl"


# instance fields
.field public a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/r;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    const-string v1, "RealNameVerificationServiceAGImpl"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "290104"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 26
    const-string p1, "290102"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_2
    const-string p1, "290103"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public requestState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/VerificationStateListener;)V
    .locals 6

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "sso_token"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "user_id"

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "game_id"

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/misc/r;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v4, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v4}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v5, Lcom/gpc/sdk/misc/r$a;

    invoke-direct {v5, p0, p4}, Lcom/gpc/sdk/misc/r$a;-><init>(Lcom/gpc/sdk/misc/r;Lcom/gpc/sdk/realname/service/VerificationStateListener;)V

    const-string v1, "/ums/verify/client/get_state"

    const/16 v3, 0x2710

    invoke-interface/range {v0 .. v5}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
