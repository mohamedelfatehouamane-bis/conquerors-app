.class public Lorg/eclipse/paho/client/mqttv3/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;


# static fields
.field private static final URI_TYPE_LOCAL:I = 0x2

.field private static final URI_TYPE_SSL:I = 0x1

.field private static final URI_TYPE_TCP:I


# instance fields
.field private clientId:Ljava/lang/String;

.field private comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private serverURI:Ljava/lang/String;

.field private serverURIType:I

.field private topics:Ljava/util/Hashtable;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 172
    invoke-static {p2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->getTrace(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 174
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURI:Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->validateURI(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURIType:I

    .line 176
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->clientId:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-nez p3, :cond_0

    .line 180
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MemoryPersistence;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/MemoryPersistence;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/16 p3, 0x65

    invoke-virtual {v0, v2, p3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 186
    iget-object p3, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {p3, p2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object p3, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {p1, p0, p2, p3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 188
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 189
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->topics:Ljava/util/Hashtable;

    return-void

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 3

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x3a

    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 299
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPort(Ljava/lang/String;I)I
    .locals 2

    const/16 v0, 0x3a

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private validateURI(Ljava/lang/String;)I
    .locals 1

    .line 194
    const-string v0, "tcp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    const-string v0, "ssl://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_1
    const-string v0, "local://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 308
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    return-void
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 322
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v5

    const-string v6, "[null]"

    const-string v7, "[notnull]"

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    const/4 v2, 0x3

    aput-object v4, v7, v2

    const/4 v2, 0x4

    aput-object v5, v7, v2

    const/4 v2, 0x5

    aput-object v6, v7, v2

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURI:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->createNetworkModule(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModule(Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;)V

    .line 334
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    .line 339
    :cond_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v4

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v8

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillDestination()Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;-><init>(Ljava/lang/String;ZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Lorg/eclipse/paho/client/mqttv3/MqttTopic;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;IJZ)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    return-void

    :cond_4
    const/16 p1, 0x7d64

    .line 318
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1
.end method

.method protected createNetworkModule(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 220
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 221
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURIType:I

    const/16 v2, 0x7d69

    const/4 v3, 0x6

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/4 p2, 0x2

    if-eq v1, p2, :cond_0

    return-object v5

    .line 272
    :cond_0
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 236
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x22b3

    .line 238
    invoke-direct {p0, p1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getPort(Ljava/lang/String;I)I

    move-result p1

    if-nez v0, :cond_3

    .line 242
    :try_start_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 243
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v0, v2, v5}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->initialize(Ljava/util/Properties;Ljava/lang/String;)V

    .line 246
    :cond_2
    invoke-virtual {v0, v5}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 256
    :cond_3
    instance-of v3, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_5

    move-object v2, v5

    .line 261
    :goto_0
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v3, v4, v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    .line 262
    move-object p1, v3

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setSSLhandshakeTimeout(I)V

    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setEnabledCiphers([Ljava/lang/String;)V

    :cond_4
    return-object v3

    .line 257
    :cond_5
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 223
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x75b

    .line 225
    invoke-direct {p0, p1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getPort(Ljava/lang/String;I)I

    move-result p1

    if-nez v0, :cond_7

    .line 227
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 228
    invoke-virtual {p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setSocketFactory(Ljavax/net/SocketFactory;)V

    goto :goto_1

    .line 230
    :cond_7
    instance-of p2, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez p2, :cond_8

    .line 233
    :goto_1
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {p2, v2, v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    return-object p2

    .line 231
    :cond_8
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 361
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect(J)V

    return-void
.end method

.method public disconnect(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/16 v1, 0x68

    invoke-virtual {v0, v2, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 383
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;-><init>()V

    .line 385
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1, v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;J)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 389
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 390
    throw p1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->serverURI:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 2

    const/16 v0, 0x23

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 462
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->topics:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    .line 465
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->topics:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 470
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 482
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 510
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public subscribe([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 493
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    .line 495
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public subscribe([Ljava/lang/String;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 573
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    .line 576
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 578
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/16 v0, 0x6a

    invoke-virtual {v2, v3, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 587
    :cond_2
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;-><init>([Ljava/lang/String;[I)V

    .line 588
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendAndWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    return-void

    .line 574
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 597
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->unsubscribe([Ljava/lang/String;)V

    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 608
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/16 v0, 0x6b

    invoke-virtual {v2, v3, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 617
    :cond_2
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;-><init>([Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendAndWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    return-void
.end method
