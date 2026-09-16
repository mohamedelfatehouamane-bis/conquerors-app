.class public Lcom/gpc/sdk/account/service/AccountServiceAGImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/service/AccountService;


# static fields
.field public static final a:Ljava/lang/String; = "AccountService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 v0, 0x38e

    if-ne p1, v0, :cond_0

    .line 3
    const-string p1, "notifySessionExpired"

    invoke-static {p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v1, "service_session_has_been_expired"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    :cond_0
    return-void
.end method

.method public bindToThirdPartyAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "platform_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getPlatform()Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string p2, "/ums/member/binding/with_platform"

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 10
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;-><init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public checkDeviceHasBind(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guest_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v2, "/ums/member/binding/guest"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "platform_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v1, "/ums/member/binding/platform"

    invoke-direct {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public createAndLoginWithDevice(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guest_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v2, "/ums/member/guest"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "platform_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v1, "/ums/member/platform"

    invoke-direct {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public loginAsGuest(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guest_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v2, "/ums/member/access_token/guest"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "platform_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v1, "/ums/member/access_token/platform"

    invoke-direct {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public requestBindingProfile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string p2, "/ums/member/binding"

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 10
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;-><init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 57
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public requestVerifyAccessKey(Ljava/lang/String;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v1, "/ums/member/access_token/get"

    invoke-direct {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 7
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;-><init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 52
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method
