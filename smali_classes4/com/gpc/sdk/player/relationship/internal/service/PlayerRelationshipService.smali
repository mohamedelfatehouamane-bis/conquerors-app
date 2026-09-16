.class public Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;


# instance fields
.field public a:Lcom/gpc/sdk/service/request/client/IServiceClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-void
.end method


# virtual methods
.method public reportPlayerRelationshipPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "event_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    new-instance p2, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {p2}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v1, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;

    invoke-direct {v1, p0, p3}, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;-><init>(Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    const-string p3, "/business/player_relationship/event_report"

    invoke-interface {p1, p3, v0, p2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    return-void
.end method
