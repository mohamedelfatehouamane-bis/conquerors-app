.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$ServiceLegacyRequest;,
        Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceCallImpl"


# instance fields
.field private commonHeadsBuilder:Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;

.field private context:Landroid/content/Context;

.field private httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->context:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;

    invoke-direct {p1, p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)V

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;->create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    .line 10
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->addHTTPInterceptor()V

    .line 11
    new-instance p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;

    const-string v0, "2.4"

    invoke-direct {p1, p2, p3, v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHeadsBuilder:Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getResourceFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHeadsBuilder:Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->path(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->isNeedRetry(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->canSelectThisPrefixe(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z

    move-result p0

    return p0
.end method

.method private addHTTPInterceptor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$b;

    invoke-direct {v1, p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$b;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method private canSelectThisPrefixe(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->requestError:I

    const/16 v0, 0x384

    if-eq p1, v0, :cond_0

    const/16 v0, 0x385

    if-eq p1, v0, :cond_0

    const/16 v0, 0x386

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    return-object v0
.end method

.method private get(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    move-object/from16 v4, p7

    invoke-direct/range {v1 .. v9}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    invoke-direct {p0, p6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method private getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$g;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-object v0
.end method

.method private getResourceFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, "/client/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private isNeedRetry(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->requestError:I

    const/16 v0, 0x384

    if-eq p1, v0, :cond_0

    const/16 v0, 0x385

    if-eq p1, v0, :cond_0

    const/16 v0, 0x386

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private path(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$f;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    move-object v4, p6

    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$f;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object p2, v0

    move-object p6, v1

    move-object p1, v2

    move-object p3, v6

    invoke-direct/range {p1 .. p6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->path(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method private path(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    invoke-direct {p0, p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v4, 0x0

    move-object v3, p3

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method private post(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$d;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    move-object v4, p6

    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$d;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object p2, v0

    move-object p6, v1

    move-object p1, v2

    move-object p3, v6

    invoke-direct/range {p1 .. p6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method private post(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    invoke-direct {p0, p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v4, 0x0

    move-object v3, p3

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method private put(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$e;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    move-object v4, p6

    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$e;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object p2, v0

    move-object p6, v1

    move-object p1, v2

    move-object p3, v6

    invoke-direct/range {p1 .. p6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->httpService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    invoke-direct {p0, p5}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->getAPIGatewayCallback(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v4, 0x0

    move-object v3, p3

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method


# virtual methods
.method public call(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;)V
    .locals 9

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getServiceURLBuilder()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getMethod()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getServiceURLBuilder()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getServiceURLBuilder()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->getPrefixes()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getParameters()Ljava/util/HashMap;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getHeads()Ljava/util/HashMap;

    move-result-object v6

    .line 10
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->getRequestFinishListener()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    move-result-object v7

    if-eqz v4, :cond_5

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 12
    sget-object v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->path(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    return-void

    :cond_2
    move-object v1, p0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->put(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    return-void

    :cond_3
    move-object v1, p0

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->post(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    return-void

    .line 29
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->enableDoOutput()Z

    move-result p1

    move-object v1, p0

    move-object v8, v7

    move v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->get(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCommonHeadsBuilder(Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->commonHeadsBuilder:Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    return-void
.end method
