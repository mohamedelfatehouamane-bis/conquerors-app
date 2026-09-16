.class public Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;
.super Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPResponseStreamBody"


# instance fields
.field private connection:Lcom/gpc/sdk/service/network/http/HTTPConnection;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/gpc/sdk/service/network/http/HTTPConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;->inputStream:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;->connection:Lcom/gpc/sdk/service/network/http/HTTPConnection;

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public closeStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->closeStream()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;->connection:Lcom/gpc/sdk/service/network/http/HTTPConnection;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->disconnect()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method
