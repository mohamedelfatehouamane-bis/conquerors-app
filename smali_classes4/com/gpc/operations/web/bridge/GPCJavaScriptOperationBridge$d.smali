.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->initHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    new-instance v2, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;Lcom/gpc/operations/base/CompatProxyManager;)V

    invoke-interface {v1, v2}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "proxy is null"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "behaviour is null"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 51
    const-string v1, "GPCJavaScriptOperationBridge"

    const-string v2, "handle: "

    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100400"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 53
    invoke-interface {p2, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
