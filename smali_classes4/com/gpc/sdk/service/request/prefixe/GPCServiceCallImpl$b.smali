.class public Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->addHTTPInterceptor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$b;->a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/UserAgentHelperKt;->generateHttpUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
