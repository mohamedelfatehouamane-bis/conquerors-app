.class public Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;


# static fields
.field private static final KEY_HANDLER_BRIDGE_CORE_GET_JS_BRIDGE_VERSION:Ljava/lang/String; = "BridgeCore.GetJSBridgeVersion"

.field private static final TAG:Ljava/lang/String; = "GPCJavaScriptCoreImpl"


# instance fields
.field private bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCJavaScriptCoreImpl"

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    const-string v0, "BridgeCore.GetJSBridgeVersion"

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->getJavaScriptBridgeVersion()Ljava/util/Map;

    move-result-object v3

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->putDataParameter(Lorg/json/JSONObject;)V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 8
    invoke-interface {p2, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;

    .line 15
    invoke-interface {v3}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getRegister()Ljava/util/HashMap;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    const-string v0, "call: handler is null"

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;

    if-eqz v4, :cond_1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find handler: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in bridge: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and call it"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {v4, p1, p2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;->handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V

    return-void

    .line 28
    :cond_3
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 29
    const-string v3, "100404"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistered handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 30
    invoke-interface {p2, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 32
    invoke-static {v2, v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    new-instance v1, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "100405"

    invoke-virtual {v1, v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 35
    invoke-interface {p2, v1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method

.method public getJavaScriptBridgeVersion()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;

    .line 10
    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptBridgeVersionInHeader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;

    .line 10
    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x_gpc_jsbridge"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptBridgeVersionInQueries()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;

    .line 10
    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x_gpc_jsbridge="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJavaScriptBridgeVersionInQueries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCJavaScriptCoreImpl"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptBridgeVersionInUserAgent()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;

    .line 10
    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerJavaScriptBridge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCJavaScriptCoreImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllJavaScriptBridge()V
    .locals 2

    .line 1
    const-string v0, "GPCJavaScriptCoreImpl"

    const-string v1, "removeAllJavaScriptBridge"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeJavaScriptBridge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;->getBridgeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCJavaScriptCoreImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/web/core/impl/GPCJavaScriptCoreImpl;->bridges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
