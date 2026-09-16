.class public Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    iput-object p2, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const-string v0, "responseHandler"

    const-string v1, "parameter"

    const-string v2, "GPCWebViewJavaScriptBridge"

    .line 0
    const-string v3, "responseHandler:"

    const-string v4, "parameter:"

    const-string v5, "handler:"

    const-string v6, "url decodeParam:"

    const-string v7, "decodeParam:"

    const-string v8, "GPCJavaScriptBridge_JSToNative:"

    .line 1
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->a:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v7, "UTF-8"

    invoke-static {v8, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v7, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    invoke-direct {v7}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;-><init>()V

    .line 16
    const-string v8, "handler"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v7, v8}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->setHandler(Ljava/lang/String;)V

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 21
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7, v5}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->setParameter(Lorg/json/JSONObject;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v7, v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->setResponseHandler(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getResponseHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-static {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->access$000(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;)Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a$a;-><init>(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;)V

    invoke-interface {v0, v7, v1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->call(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    const-string v1, "js_parse_data_error"

    invoke-static {v2, v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    new-instance v1, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    const-string v2, "BridgeCore.JSCallNativeOnError"

    invoke-direct {v1, v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "100001"

    invoke-virtual {v1, v2, v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 41
    iget-object v0, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->sendToJs(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
