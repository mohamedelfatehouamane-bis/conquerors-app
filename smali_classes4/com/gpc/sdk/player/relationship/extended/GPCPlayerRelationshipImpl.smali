.class public Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/player/relationship/GPCPlayerRelationship;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;
    }
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;

    invoke-direct {v0}, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;->a:Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;

    return-void
.end method


# virtual methods
.method public recordPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

    invoke-direct {v0, p3}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;-><init>(Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    .line 2
    iget-object p3, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;->a:Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;

    new-instance v1, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;

    invoke-direct {v1, p0, v0}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;-><init>(Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;)V

    invoke-interface {p3, p1, p2, v1}, Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;->reportPlayerRelationshipPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    return-void
.end method

.method public recordPanelClosed(Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

    invoke-direct {v0, p2}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;-><init>(Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;->a:Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;

    new-instance v1, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$c;

    invoke-direct {v1, p0, v0}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$c;-><init>(Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;)V

    const-string v0, "close"

    invoke-interface {p2, p1, v0, v1}, Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;->reportPlayerRelationshipPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    return-void
.end method

.method public recordPanelOpen(Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

    invoke-direct {v0, p2}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;-><init>(Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;->a:Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;

    new-instance v1, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$b;

    invoke-direct {v1, p0, v0}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$b;-><init>(Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;)V

    const-string v0, "popup"

    invoke-interface {p2, p1, v0, v1}, Lcom/gpc/sdk/player/relationship/internal/service/IPlayerRelationshipService;->reportPlayerRelationshipPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V

    return-void
.end method
