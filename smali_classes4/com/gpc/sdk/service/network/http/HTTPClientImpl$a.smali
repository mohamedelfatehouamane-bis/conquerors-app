.class public Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;
.super Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field public final synthetic b:Lcom/gpc/sdk/service/network/http/HTTPConnection;

.field public final synthetic c:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->c:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;

    iput-object p2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iput-object p3, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->b:Lcom/gpc/sdk/service/network/http/HTTPConnection;

    invoke-direct {p0}, Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->c:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->b:Lcom/gpc/sdk/service/network/http/HTTPConnection;

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->access$000(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v2, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->setProcessedRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->c:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;

    invoke-static {v2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->access$100(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iput-object v2, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    .line 7
    new-instance v2, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v3, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    invoke-direct {v2, v3, v0}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object v2, v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 8
    const-string v2, "HTTPClientImpl"

    const-string v3, "httpRequest error"

    invoke-static {v2, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
