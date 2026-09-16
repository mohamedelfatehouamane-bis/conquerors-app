.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$g;
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
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$g;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 4

    const-string v0, "OPS.Repayment.BuyItem"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$g;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v1, v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;

    invoke-direct {v1}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;-><init>()V

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->createResponser(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "productId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->onRepay(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "behaviour is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 19
    const-string v2, "GPCJavaScriptOperationBridge"

    const-string v3, "handle: "

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    new-instance v2, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v2, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 21
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100400"

    invoke-virtual {v2, v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 22
    invoke-interface {p2, v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    .line 23
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->access$000()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
