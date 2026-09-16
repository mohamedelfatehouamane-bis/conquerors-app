.class public final Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;
    }
.end annotation


# static fields
.field private static final BRIDGE_HANDLER_EXCEPTION_METHOD:Ljava/lang/String; = "BridgeCore.JSCallNativeOnError"

.field public static final GPC_BRIDGE_V1:Ljava/lang/String; = "gpc_jsbridge_v1"

.field private static final TAG:Ljava/lang/String; = "GPCWebViewJavaScriptBridge"


# instance fields
.field private final javaScriptCore:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    .line 3
    new-instance p1, Lcom/gpc/sdk/utils/common/webview/core/impl/GPCJavaScriptCoreImpl;

    invoke-direct {p1}, Lcom/gpc/sdk/utils/common/webview/core/impl/GPCJavaScriptCoreImpl;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->javaScriptCore:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;)Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->javaScriptCore:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "GPCWebViewJavaScriptBridge"

    const-string v0, "GPCJavaScriptBridge_JSToNative webView is null"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;-><init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public existMeta(Ljava/lang/String;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "GPCWebViewJavaScriptBridge"

    const-string p2, "existMeta webView is null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function() {var metas = document.getElementsByTagName(\'meta\');for (var i = 0; i < metas.length; i++) {    if (metas[i].getAttribute(\'name\') === \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') {        return [metas[i].getAttribute(\'name\'), metas[i].getAttribute(\'content\')];    }}return null;})()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;-><init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->javaScriptCore:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    return-object v0
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "gpc"

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->javaScriptCore:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->removeAllJavaScriptBridge()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public sendToJs(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    const-string v1, "GPCWebViewJavaScriptBridge"

    if-nez v0, :cond_0

    .line 2
    const-string p1, "sendToJs webView is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendToJs:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->getHandler()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call js:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$b;-><init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
