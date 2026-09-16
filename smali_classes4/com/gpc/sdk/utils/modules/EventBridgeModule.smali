.class public Lcom/gpc/sdk/utils/modules/EventBridgeModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "EventBridgeModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "event_level"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventBridgeModule"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    const-string p1, "post Event failed, ModulesManager is not inited"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    const-string v1, "EC_SDK_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Handling EC_SDK_EVENT with data: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    const-string p2, "event_name"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    const-string v1, "event_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    .line 22
    :goto_0
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 23
    sget-object v3, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->IMPORTANT:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 58
    :pswitch_1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 59
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    goto :goto_2

    .line 60
    :pswitch_2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 61
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    goto :goto_2

    .line 62
    :pswitch_3
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    goto :goto_2

    .line 63
    :pswitch_4
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    :goto_1
    move-object v0, p1

    goto :goto_3

    .line 64
    :pswitch_5
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    goto :goto_1

    .line 65
    :pswitch_6
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 66
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    goto :goto_2

    .line 67
    :pswitch_7
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 68
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    goto :goto_2

    .line 69
    :pswitch_8
    sget-object p1, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    :goto_2
    move-object v3, p1

    .line 107
    :goto_3
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v4}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 108
    sget-object p2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->getCollection()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v3}, Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;->pushWithPlanB(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    const-string p2, "Error parsing JSON data for EC_SDK_EVENT"

    invoke-static {v2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 116
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported event name: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_4
    :goto_4
    const-string p1, "post Event failed, name is null or empty"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
