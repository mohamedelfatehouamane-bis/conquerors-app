.class public Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;->reportPlayerRelationshipPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

.field public final synthetic b:Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;->b:Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService;

    iput-object p2, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    const-string v0, "440104"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 3
    invoke-interface {p2, p1}, Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;->onResult(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    const/16 v0, 0x1389

    if-ne p1, v0, :cond_0

    .line 1
    const-string v0, "440105"

    goto :goto_1

    :cond_0
    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, "440103"

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    const-string v0, "440102"

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;->onResult(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/player/relationship/internal/service/PlayerRelationshipService$a;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;->onResult(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
