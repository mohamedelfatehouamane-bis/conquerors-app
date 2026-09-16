.class public abstract Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public closeStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->contentLength:J

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->contentType:Ljava/lang/String;

    return-void
.end method
