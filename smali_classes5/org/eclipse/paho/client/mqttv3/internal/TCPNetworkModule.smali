.class public Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;
.super Ljava/lang/Object;
.source "TCPNetworkModule.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;


# instance fields
.field private factory:Ljavax/net/SocketFactory;

.field private host:Ljava/lang/String;

.field private port:I

.field protected socket:Ljava/net/Socket;

.field protected trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->factory:Ljavax/net/SocketFactory;

    .line 45
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->host:Ljava/lang/String;

    .line 46
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->port:I

    .line 47
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->factory:Ljavax/net/SocketFactory;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->host:Ljava/lang/String;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->port:I

    invoke-virtual {v1, v2, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    .line 58
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 62
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x7d67

    .line 63
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method
