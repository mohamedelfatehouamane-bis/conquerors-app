.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
.super Ljava/lang/Object;
.source "CommsTokenStore.java"


# instance fields
.field private connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private noMoreResponses:Z

.field private noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private tokens:Ljava/util/Hashtable;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    .line 55
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 56
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 57
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 58
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-void
.end method

.method private getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 2

    .line 83
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object p1

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v0, :cond_1

    .line 87
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object p1

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 250
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 251
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public getOutstandingTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 4

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 224
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 226
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-eqz v2, :cond_0

    .line 229
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    const/4 v2, 0x0

    .line 237
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 1

    .line 63
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v0, :cond_1

    .line 67
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v0, :cond_2

    .line 70
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 72
    :cond_2
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v0, :cond_3

    .line 73
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object p1, v0

    .line 78
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object p1
.end method

.method protected noMoreResponses(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 5

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    .line 206
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 207
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x130

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    monitor-enter v0

    .line 216
    :try_start_0
    move-object v2, v0

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 217
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 4

    .line 97
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 99
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 105
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/16 v3, 0x12d

    invoke-virtual {v1, p1, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 110
    :cond_2
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object p1
.end method

.method protected responseReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    .line 188
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    :cond_0
    return-void
.end method

.method protected restoreToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 7

    .line 120
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 121
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 123
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/16 p1, 0x12e

    invoke-virtual {v6, v5, p1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    :cond_0
    return-object v1

    .line 128
    :cond_1
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v1, v6, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 129
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/16 p1, 0x12f

    invoke-virtual {v6, v5, p1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method protected saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 6

    .line 141
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 145
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v0, :cond_1

    .line 146
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 148
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 152
    :cond_1
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 157
    :cond_2
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v0, :cond_3

    .line 159
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 160
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v2

    goto :goto_1

    .line 162
    :cond_3
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    move-object v4, p1

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    goto :goto_1

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    .line 170
    :goto_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/16 v1, 0x12c

    invoke-virtual {v3, p1, v1, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 174
    :cond_5
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    if-eqz p1, :cond_6

    .line 176
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_6
    return-object v2
.end method
