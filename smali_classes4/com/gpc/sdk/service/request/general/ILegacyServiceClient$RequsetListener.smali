.class public interface abstract Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$RequsetListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequsetListener"
.end annotation


# virtual methods
.method public abstract onConnectionError(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onRemoteServiceFailure(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
.end method

.method public abstract onSuccess(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
.end method
