.class public final synthetic Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field public final synthetic f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    invoke-static {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->$r8$lambda$-iYW6y0CWMz8ROcEj9ZGzLTtlkg(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method
