.class public Lcom/gpc/sdk/misc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/misc/x$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "UserGeneratedContentService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/sdk/misc/x$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/misc/x$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/misc/x$d;)V

    return-void
.end method

.method public final synthetic a(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;Ljava/lang/String;)V
    .locals 6

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v5, "sso_token"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p2, "game_id"

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p2, "user_id"

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p2, "char_id"

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p2, "server_id"

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p2, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v0, "/business/game_censor/censor/user/v1/policies"

    invoke-direct {p2, v0}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v4}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p2

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 17
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p2

    new-instance v0, Lcom/gpc/sdk/misc/x$b;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/misc/x$b;-><init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 54
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 55
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/gpc/sdk/misc/x$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/misc/x$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/misc/x$d;)V

    return-void
.end method

.method public final synthetic a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;Ljava/lang/String;)V
    .locals 6

    .line 57
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v5, "sso_token"

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string p3, "game_id"

    invoke-virtual {v4, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p3, "user_id"

    invoke-virtual {v4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p3, "char_id"

    invoke-virtual {v4, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p3, "server_id"

    invoke-virtual {v4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "content"

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->b()Ljava/lang/String;

    move-result-object p3

    const-string v0, "data_id"

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "data_type"

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->d()Ljava/lang/String;

    move-result-object p3

    const-string v0, "payload"

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->g()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->g()Ljava/lang/String;

    move-result-object p3

    const-string v0, "scenario"

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    new-instance p3, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;

    invoke-direct {p3}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setScenario(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setContent(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setPayload(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setDataId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setDataType(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setQueueTag(Ljava/lang/String;)V

    .line 88
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v0, "/business/game_censor/censor/text/v1/check"

    invoke-direct {p1, v0}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v4}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 90
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/misc/x$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/gpc/sdk/misc/x$c;-><init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V

    .line 91
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 128
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/misc/x$d;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/misc/x$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/misc/x$a;-><init>(Lcom/gpc/sdk/misc/x;Lcom/gpc/sdk/misc/x$d;)V

    const-string p1, "TAG_UGC"

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method
