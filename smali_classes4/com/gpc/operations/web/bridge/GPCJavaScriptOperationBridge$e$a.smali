.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

.field public final synthetic b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

.field public final synthetic c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    iput-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    iput-object p3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "allowPickingVideo"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    iget-object v1, v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v1, v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;

    invoke-direct {v1}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    iget-object v3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    invoke-virtual {v1, v2, v3}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->createResponser(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V

    .line 6
    iget-object v2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maximum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 7
    iget-object v2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "itemId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object v2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v4}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "uploadToken"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    iget-object v4, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v4}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "maxSize"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 11
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v12, 0x32

    if-eqz v2, :cond_1

    .line 13
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 14
    invoke-virtual {v11, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gpc/operations/utils/KeyboardUtils;->hideInput(Landroid/app/Activity;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, p0

    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$a;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;ILjava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    move-object v5, p0

    .line 23
    iget-object v0, v5, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gpc/operations/utils/KeyboardUtils;->hideInput(Landroid/app/Activity;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;

    invoke-direct/range {v4 .. v10}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    move-object v5, p0

    .line 25
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "behaviour is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, p0

    .line 55
    :goto_1
    const-string v1, "GPCJavaScriptOperationBridge"

    const-string v2, "handle: "

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    new-instance v1, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    iget-object v2, v5, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-direct {v1, v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "100400"

    invoke-virtual {v1, v2, v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 58
    iget-object v0, v5, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    invoke-interface {v0, v1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    .line 59
    iget-object v0, v5, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
