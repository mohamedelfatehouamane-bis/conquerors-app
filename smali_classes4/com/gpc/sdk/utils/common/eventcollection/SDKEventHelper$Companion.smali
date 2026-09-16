.class public final Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;-><init>()V

    return-void
.end method

.method private final getInternalEventCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.gpc.sdk.eventcollection.internal.GPCInternalEventCollection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final logEventInEveryScence(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getInternalEventCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 10
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getPendingSendEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized flushPendingSendEvent()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getPendingSendEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getInternalEventCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v3, v4, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getPendingSendEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->access$getCollection$cp()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    return-object v0
.end method

.method public final getPendingSendEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->access$getPendingSendEvents$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized guestLoginLoadAlgorithmFail(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "messsage"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string p1, "jni.load.failed"

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    const-string v0, "SDKEventHelper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final logAgreementsigningConsentmodeCheckApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SDKEventHelper"

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.agreementsigning.consentmode.check.api"

    invoke-direct {p1, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v2, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final logAgreementsigningConsentmodeCheckResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SDKEventHelper"

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.agreementsigning.consentmode.check.result"

    invoke-direct {p1, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v2, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final logAgreementsigningConsentmodePresigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SDKEventHelper"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string p1, "policies"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    .line 8
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const-string p1, "ad_sdk_list"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    .line 11
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    const-string p1, "guardian_verification"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_4
    :goto_1
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.agreementsigning.presigned"

    invoke-direct {p1, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object p4, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, p3, p4}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public final logAgreementsigningConsentmodeSigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SDKEventHelper"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string p1, "policies"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    .line 8
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const-string p1, "ad_sdk_list"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    .line 11
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    const-string p1, "guardian_verification"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_4
    :goto_1
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.agreementsigning.signed"

    invoke-direct {p1, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object p4, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, p3, p4}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public final declared-synchronized logCryptoFlashback(Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string v1, "sdk.crypto.flashback"

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-direct {p0, v0, p1, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logEventInEveryScence(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    const-string v0, "SDKEventHelper"

    const-string v1, "logHttpSignFail"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logCryptoForEncrypt(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 7
    :cond_1
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_2

    .line 10
    const-string p2, "state"

    const-string v1, "0"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_2
    const-string p2, "state"

    const-string v1, "1"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :goto_0
    const-string p2, "message"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string p2, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p1, "config-ver"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.crypto"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    const-string p2, "SDKEventHelper"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    sget-object p3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 22
    sget-object p4, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    .line 23
    invoke-virtual {p2, p1, p3, p4}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string p3, "logCryptoForEncrypt"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logCryptoForParseFile(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 7
    :cond_0
    const-string v1, "name"

    const-string v2, "parse_file"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    .line 10
    const-string p1, "state"

    const-string v2, "0"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_1
    const-string p1, "state"

    const-string v2, "1"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_0
    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p1, "data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string p1, "config-ver"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.crypto"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    const-string p2, "SDKEventHelper"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    sget-object p3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 23
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    .line 24
    invoke-virtual {p2, p1, p3, v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string p3, "logCryptoForParseFile"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logCryptoForReceiveFile(J)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForReceiveFileEvent(J)Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logEventInEveryScence(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    const-string p2, "SDKEventHelper"

    const-string v0, "logCryptoForReceiveFile"

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logCryptoForReceiveFileEvent(J)Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "name"

    const-string v2, "receive_file"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "length"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "config-ver"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDKEventHelper"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.crypto"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logEvent(Ljava/lang/String;Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 9
    :cond_0
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-direct {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0, p2, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logGenerateOAIDTimeEvent(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "sdk.oaid.elapsed_time"

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    const-string v2, "oaid_elapsed_time"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string v2, "logGenerateOAIDTimeEvent Exception"

    invoke-static {p2, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string p2, "SDKEventHelper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-direct {p1, v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object p2

    .line 14
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v2, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->IMPORTANT:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->delayPush(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logPaySubscriptionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "paymentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerFormServer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerTokenFindFormLocal"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offersFormLocal"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkProductID"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "payment_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string p1, "item_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string p1, "offer_form_server"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string p1, "offer_token_find_form_local"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "offers_form_local"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "link_product_id"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p1, "changeable"

    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    const-string p1, "is_normal"

    invoke-virtual {v0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    const-string p1, "subscription"

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final logSDKInitInstall()V
    .locals 5

    const-string v0, "SDKEventHelper"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string v3, "sdk.init.install"

    invoke-direct {v2, v3, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v4, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {v1, v2, v3, v4}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 9
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized logSSOTokenFailedEvent(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    const-string v1, "sdk_module_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string p2, "underlying_error_code"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p2, "underlying_error_message"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "trace_id"

    if-nez p3, :cond_0

    const-string p3, ""

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p1, "sdk.account.ssotoken.failover.failed"

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    const-string p2, "GPCSession"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkAPIFailedEvent(Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk.api.failed"

    invoke-direct {v0, v2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKEventHelper"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->sensitiveData()V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v2, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "messsage"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 9
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "log_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "log_logs"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.logs"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, v0, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkLogBeforeInit(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "log_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "log_logs"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.logs"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    move-result-object p2

    .line 9
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v2, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->IMPORTANT:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->delayPush(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkPayFailEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "exception"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v1, "payment_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "transaction_item_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "transaction_order_id"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    const-string p1, "sdk_error_code"

    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p1, "sdk_error_message"

    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    const-string p1, "underlying_error_code"

    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string p1, "underlying_error_message"

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 22
    :cond_1
    const-string p1, "underlying_error_code"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string p1, "underlying_error_message"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 26
    :cond_2
    const-string p1, "sdk_error_code"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string p1, "sdk_error_message"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string p1, "underlying_error_code"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string p1, "underlying_error_message"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :goto_0
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.payment.pay.failed"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    const-string p2, "SDKEventHelper"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object p3, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object p4, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, p3, p4}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkPayInitFailEvent(Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "paymentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v1, "payment_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "sdk_error_code"

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "underlying_error_code"

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p1, "sdk_error_message"

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    const-string p1, "underlying_error_message"

    .line 12
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "underlying_error_message"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :goto_0
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    const-string p2, "sdk.payment.init.failed"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p2, p1, v0, v1}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDKEventHelper"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sdkQRCodeFailedEvent(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "payType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "payment"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string p1, "error_message"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string p1, "payment.qrcode.failed"

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    const-string p2, "SDKEventHelper"

    const-string v0, "sdkQRCodeFailedEvent"

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final setCollection(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->access$setCollection$cp(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V

    return-void
.end method
