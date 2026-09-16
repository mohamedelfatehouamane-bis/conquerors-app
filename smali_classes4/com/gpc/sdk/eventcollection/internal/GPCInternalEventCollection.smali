.class public final Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection$Companion;

.field public static final TAG:Ljava/lang/String; = "InternalEventCollection"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->Companion:Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getInternalClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    return-object v0
.end method

.method private final getPlanBClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getDefaultClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final purgeBuffer()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->purgeBuffer()V

    :cond_0
    return-void
.end method

.method public final push(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 2

    const-string v0, "InternalEventCollection"

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventEscalation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GPCEventImportance"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    const-string p1, "event name is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 2

    const-string v0, "InternalEventCollection"

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventEscalation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GPCEventImportance"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    const-string p1, "event name is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    const-string v1, "sdk client is null."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getPlanBClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    const-string v1, "Plan B client is null!!!"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getPlanBClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2, p3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    return-void

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2, p3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
