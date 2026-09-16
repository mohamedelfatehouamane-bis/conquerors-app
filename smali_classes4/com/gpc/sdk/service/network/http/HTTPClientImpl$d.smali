.class public Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/network/http/HTTPClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field public b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field public c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

.field public d:Lcom/gpc/sdk/service/network/http/HTTPException;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->e:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->g:Z

    .line 8
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/gpc/sdk/service/network/http/HTTPResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPResult;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/HTTPResult;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPResult;->setOriginalRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPResult;->setProcessedRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPResult;->setResponse(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPResult;->setException(Lcom/gpc/sdk/service/network/http/HTTPException;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->g:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNetworkAvailable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPClientImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->g:Z

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPException;->setNetworkAvailable(Z)V

    :cond_1
    return-void
.end method
