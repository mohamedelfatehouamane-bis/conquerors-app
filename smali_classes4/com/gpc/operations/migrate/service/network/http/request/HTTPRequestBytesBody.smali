.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;
.super Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;
.source "SourceFile"


# instance fields
.field private content:[B


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    .line 6
    iget-object v0, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    .line 7
    iget-object v1, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;->content:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
