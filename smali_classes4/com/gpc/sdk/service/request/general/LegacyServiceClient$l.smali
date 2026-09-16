.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$l;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$l;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;

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

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$l;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$l;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void
.end method
