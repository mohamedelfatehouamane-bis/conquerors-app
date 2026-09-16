.class public final synthetic Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;

.field public final synthetic f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;->f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;->f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;

    invoke-static {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->$r8$lambda$l6KwLGlZoHqitSzA71dEyvJc0ZA(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V

    return-void
.end method
