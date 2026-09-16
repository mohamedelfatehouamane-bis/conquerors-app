.class public Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;->recordPanelAction(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

.field public final synthetic b:Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;->b:Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;

    iput-object p2, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;->a:Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$a;->a:Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
