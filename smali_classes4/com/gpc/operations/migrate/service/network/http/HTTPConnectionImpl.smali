.class public Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTPConnection"


# instance fields
.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private write(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 13
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 20
    :cond_0
    throw p1
.end method


# virtual methods
.method public create(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "HTTPConnection"

    const-string v0, "urlConnection is null.Unable to complete operation."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getWriteListener()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->write(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "HTTPConnection"

    const-string v1, "urlConnection is null.Unable to complete operation."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v0, ""

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "HTTPConnection"

    const-string v1, "urlConnection is null.Unable to complete operation."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "HTTPConnection"

    const-string v1, "urlConnection is null.Unable to complete operation."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "HTTPConnection"

    const-string v1, "urlConnection is null.Unable to complete operation."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "HTTPConnection"

    const-string v1, "urlConnection is null.Unable to complete operation."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public head(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public headers(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v0, "Charset"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public list(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "HTTPConnection"

    const-string v0, "urlConnection is null.Unable to complete operation."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 10
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->enableDoOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getWriteListener()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->write(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    :cond_2
    return-void
.end method

.method public openConnection(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "HTTPConnection"

    const-string v1, "create android native HttpURLConnection"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    .line 8
    throw p1
.end method

.method public patch(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "HTTPConnection"

    const-string v0, "urlConnection is null.Unable to complete operation."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getWriteListener()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 33
    :cond_2
    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public update(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "HTTPConnection"

    const-string v0, "urlConnection is null.Unable to complete operation."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPConnectionImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getBody()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getWriteListener()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 27
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 34
    :cond_2
    throw p1
.end method
