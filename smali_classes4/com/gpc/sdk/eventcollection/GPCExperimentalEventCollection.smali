.class public Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final SALT:Ljava/lang/String; = "./23e0-"

.field private static final TAG:Ljava/lang/String; = "GPCExperimentalEventCollection"


# instance fields
.field private isLocked:Z

.field private logCollector:Lcom/gpc/sdk/eventcollection/GPCLogCollector;

.field private unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    .line 3
    new-instance v1, Lcom/gpc/sdk/eventcollection/GPCLogCollector;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V

    iput-object v1, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->logCollector:Lcom/gpc/sdk/eventcollection/GPCLogCollector;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->isLocked:Z

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getExperimentalClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->logCollector:Lcom/gpc/sdk/eventcollection/GPCLogCollector;

    :cond_0
    return-void
.end method


# virtual methods
.method public logCollector()Lcom/gpc/sdk/eventcollection/GPCLogCollector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->isLocked:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->logCollector:Lcom/gpc/sdk/eventcollection/GPCLogCollector;

    return-object v0

    .line 6
    :cond_0
    const-string v0, "GPCExperimentalEventCollection"

    const-string v1, "need to unlock!"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public purgeBuffer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->purgeBuffer()V

    return-void
.end method

.method public setCompatProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->setProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method public unlock(I)V
    .locals 7

    .line 1
    const-string v0, "GPCExperimentalEventCollection"

    .line 0
    const-string v1, "f"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v5, Lcom/gpc/util/MD5;

    invoke-direct {v5}, Lcom/gpc/util/MD5;-><init>()V

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "./23e0-"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 9
    const-string p1, "unlock"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-boolean v4, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->isLocked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public unmanagedEventCollector()Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->isLocked:Z

    const-string v1, "GPCExperimentalEventCollection"

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    const-string v0, "Event Collection is not ready yet."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getExperimentalClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;->unmanagedEventCollector:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;

    return-object v0

    .line 12
    :cond_2
    const-string v0, "need to unlock!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
