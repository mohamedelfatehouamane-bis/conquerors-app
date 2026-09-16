.class public Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/account/service/ISessionService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSSOToken(Ljava/lang/String;Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;)V
    .locals 3

    .line 1
    const-string v0, "SessionServiceImpl"

    const-string v1, "requets Web SSO Token."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/gpc/operations/migrate/service/request/cgi/builder/ServiceRequestUMSBuilder;

    const-string v2, "/client/web_sso_token"

    invoke-direct {v1, v2}, Lcom/gpc/operations/migrate/service/request/cgi/builder/ServiceRequestUMSBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->heads(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;->POST:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->method(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;-><init>(Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->requestFinishListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCall;

    invoke-direct {p2}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCall;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->build()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;->call(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;)V

    return-void
.end method
