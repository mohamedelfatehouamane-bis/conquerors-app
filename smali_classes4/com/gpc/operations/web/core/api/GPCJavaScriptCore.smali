.class public interface abstract Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract call(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
.end method

.method public abstract getJavaScriptBridgeVersion()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJavaScriptBridgeVersionInHeader()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJavaScriptBridgeVersionInQueries()Ljava/lang/String;
.end method

.method public abstract getJavaScriptBridgeVersionInUserAgent()Ljava/lang/String;
.end method

.method public abstract registerJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V
.end method

.method public abstract removeAllJavaScriptBridge()V
.end method

.method public abstract removeJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V
.end method
