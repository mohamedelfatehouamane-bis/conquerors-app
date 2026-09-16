.class public final Lcom/gpc/sdk/eventcollection/GPCEventCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/GPCEventCollection$Companion;
    }
.end annotation


# static fields
.field public static final CONFIG_VERSION:Ljava/lang/String; = "v1"

.field public static final Companion:Lcom/gpc/sdk/eventcollection/GPCEventCollection$Companion;

.field public static final TAG:Ljava/lang/String; = "GPCEventCollection"

.field public static final VERSION:Ljava/lang/String; = "v4"


# instance fields
.field private eventCollector:Lcom/gpc/sdk/eventcollection/GPCEventCollector;

.field private unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCEventCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->Companion:Lcom/gpc/sdk/eventcollection/GPCEventCollection$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eventCollector()Lcom/gpc/sdk/eventcollection/GPCEventCollector;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "GPCEventCollection"

    const-string v1, "Event Collection is not ready yet."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->eventCollector:Lcom/gpc/sdk/eventcollection/GPCEventCollector;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->eventCollector:Lcom/gpc/sdk/eventcollection/GPCEventCollector;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->eventCollector:Lcom/gpc/sdk/eventcollection/GPCEventCollector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final purgeBuffer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->purgeBuffer()V

    return-void
.end method

.method public final setCompatProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->setProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method public final unmanagedEventCollector()Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "GPCEventCollection"

    const-string v1, "Event Collection is not ready yet."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V

    .line 9
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
