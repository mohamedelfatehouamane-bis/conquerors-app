.class public abstract Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract length()J
.end method

.method public abstract readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->contentType:Ljava/lang/String;

    return-void
.end method
