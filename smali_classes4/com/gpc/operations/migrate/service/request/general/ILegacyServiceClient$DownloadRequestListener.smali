.class public interface abstract Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadRequestListener"
.end annotation


# virtual methods
.method public abstract onDownloadProgress(F)V
.end method

.method public abstract onDownloadRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;Ljava/io/File;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V
.end method
