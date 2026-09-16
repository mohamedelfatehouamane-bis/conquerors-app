.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;


# instance fields
.field private apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/HTTPService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    invoke-direct {p0, p4}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->getHTTPServiceCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method private getHTTPServiceCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$b;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$b;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-object v0
.end method

.method private getResponseListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    return-object v0
.end method

.method private post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    const-string p3, ""

    invoke-direct {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    .line 6
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    invoke-direct {p0, p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->getHTTPServiceCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p4

    invoke-interface/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method


# virtual methods
.method public call(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getMethod()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getParameters()Ljava/util/HashMap;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getHeads()Ljava/util/HashMap;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getRequestFinishListener()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    move-result-object v1

    .line 7
    sget-object v4, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getBody()Ljava/util/HashMap;

    move-result-object v4

    .line 16
    invoke-direct {p0, v1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->getResponseListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    move-object p1, v1

    return-void

    :cond_2
    move-object p1, p0

    .line 17
    invoke-direct {p0, v1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->getResponseListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;

    move-result-object v0

    invoke-direct {p0, v2, v3, v5, v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->get(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method
