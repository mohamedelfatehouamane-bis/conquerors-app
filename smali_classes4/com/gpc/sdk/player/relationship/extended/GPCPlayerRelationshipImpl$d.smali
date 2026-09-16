.class public Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "GPCPlayerRelationshipImpl"


# instance fields
.field public final a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/extended/GPCPlayerRelationshipImpl$d;->a:Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/player/relationship/GPCPlayerRelationshipRecordPanelActionCallback;->onResult(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    const-string v0, "GPCPlayerRelationshipImpl"

    const-string v1, "callback.onResult"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
