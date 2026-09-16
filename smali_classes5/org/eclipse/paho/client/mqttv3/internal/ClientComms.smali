.class public Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
.super Ljava/lang/Object;
.source "ClientComms.java"


# instance fields
.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private connected:Z

.field private connectionTimeoutSecs:I

.field private destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

.field private disconnectThread:Ljava/lang/Thread;

.field private disconnecting:Z

.field private networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

.field private sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 66
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 67
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-direct {v1, p3, p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 68
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 69
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 70
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

    .line 71
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-direct {p1, p3, p2, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 72
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    return-void
.end method

.method private internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    .line 83
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v1, :cond_2

    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->incrementWaitingTokens()V

    .line 86
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitUntilSent()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementWaitingTokens()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->undo(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 93
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementWaitingTokens()V

    throw p1

    :cond_2
    return-object v0

    .line 100
    :cond_3
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    const/16 v0, 0xd0

    invoke-virtual {p1, v2, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    const/16 p1, 0x7d68

    .line 101
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public connect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;IJZ)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    const/4 v6, 0x1

    if-nez v0, :cond_3

    const/4 v7, 0x0

    .line 129
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    .line 130
    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connectionTimeoutSecs:I

    .line 131
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setKeepAliveSecs(J)V

    .line 132
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setCleanSession(Z)V

    const/4 v8, 0x0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->start()V

    .line 136
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v5}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    .line 137
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->start()V

    .line 138
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v5}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 139
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->start()V

    .line 156
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v3, v1

    .line 157
    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    instance-of v1, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    .line 166
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 176
    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v7

    const/16 v3, 0xcc

    invoke-virtual {v0, v6, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 171
    invoke-virtual {p0, v8}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 172
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    const/16 v0, 0xcd

    invoke-virtual {v1, v6, v0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    const/4 v0, 0x6

    .line 182
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0xcb

    invoke-virtual {v0, v6, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 161
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    const/16 v0, 0x7d00

    .line 162
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xce

    invoke-virtual {v1, v6, v3, v8, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    invoke-virtual {p0, v8}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 189
    throw v0

    :catch_1
    move-exception v0

    .line 148
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xd4

    invoke-virtual {v1, v6, v3, v8, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 150
    throw v0

    :catch_2
    move-exception v0

    .line 143
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xd1

    invoke-virtual {v1, v6, v3, v8, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 145
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 194
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0xcf

    invoke-virtual {v0, v6, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    const/16 v0, 0x7d64

    .line 195
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
.end method

.method protected deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    return-void
.end method

.method public disconnect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 256
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesce(J)V

    .line 257
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {p2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->setDisconnecting(Z)V

    const/4 p2, 0x0

    .line 262
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 263
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitUntilSent()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p0, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 271
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :goto_0
    invoke-virtual {p0, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 271
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    throw p1

    .line 252
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 p2, 0xd2

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    const/16 p1, 0x7d6b

    .line 254
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 276
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 p2, 0xd3

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    const/16 p1, 0x7d65

    .line 277
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getOutstandingTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method protected getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object p1

    return-object p1
.end method

.method public isConnected()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    return v0
.end method

.method public sendAndWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connectionTimeoutSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForCompletion(J)V

    return-void
.end method

.method public sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    return-void
.end method

.method public setNetworkModule(Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    return-void
.end method

.method public shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 5

    .line 203
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/16 v3, 0xc9

    invoke-virtual {v0, v2, v3, v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 210
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    if-nez v0, :cond_3

    .line 211
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 212
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    .line 213
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->disconnecting(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 217
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :catch_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->stop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :catch_1
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->stop()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    :catch_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->disconnected(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 233
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->stop()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    nop

    .line 237
    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 241
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->connectionLost(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    .line 244
    :cond_3
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    return-void
.end method
