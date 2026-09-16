.class public Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;
.super Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;,
        Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;
    }
.end annotation


# static fields
.field private static final COLONSPACE:[B

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final DASHDASH:Ljava/lang/String; = "--"

.field private static final TAG:Ljava/lang/String; = "HTTPRequestMultipartBody"


# instance fields
.field private boundary:[B

.field private length:I

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->COLONSPACE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->parts:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->length:I

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->boundary:[B

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->parts:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public length()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public readBytes(Ljava/io/OutputStream;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "--"

    const-string v3, "\r\n"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->boundary:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-object v2, v1, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 13
    iget-object v1, v1, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;->readBytes(Ljava/io/OutputStream;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)V

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 19
    iget-object p2, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->boundary:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
