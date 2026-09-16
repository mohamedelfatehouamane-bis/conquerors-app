.class public interface abstract Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$RequsetListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequsetListener"
.end annotation


# virtual methods
.method public abstract onConnectionError(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onRemoteServiceFailure(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
.end method

.method public abstract onSuccess(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
.end method
