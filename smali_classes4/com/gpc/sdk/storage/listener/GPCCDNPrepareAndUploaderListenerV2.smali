.class public interface abstract Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onProgress(JJ)V
.end method

.method public abstract onStart(Lcom/gpc/sdk/storage/bean/GPCCNDPrepareResultV2;)V
.end method

.method public abstract onSuccess(Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;)V
.end method
