.class public Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->initHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    iget-object p2, p2, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    const-string p2, "code"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    iget-object p1, p1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->goBack()V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "behaviour is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 16
    const-string p2, "GPCJavaScriptCommonBridge"

    const-string v0, "handle: "

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
