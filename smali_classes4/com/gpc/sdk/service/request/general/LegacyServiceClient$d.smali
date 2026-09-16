.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->postFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    const-string p1, "4000"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$RequsetListener;->onConnectionError(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$RequsetListener;->onSuccess(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void

    .line 5
    :cond_0
    const-string p1, "6000"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$d;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$RequsetListener;->onRemoteServiceFailure(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void
.end method
