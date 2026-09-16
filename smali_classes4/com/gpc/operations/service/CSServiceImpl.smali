.class public Lcom/gpc/operations/service/CSServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/ICSService;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoForward(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v2, "game_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "sso_token"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object p1

    new-instance p2, Lcom/gpc/operations/service/CSServiceImpl$a;

    invoke-direct {p2, p0, p3}, Lcom/gpc/operations/service/CSServiceImpl$a;-><init>(Lcom/gpc/operations/service/CSServiceImpl;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V

    const-string p3, "/cs/goto/forward"

    invoke-interface {p1, p3, v1, v0, p2}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method
