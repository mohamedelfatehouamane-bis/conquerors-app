.class public Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->existMeta(Ljava/lang/String;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

.field public final synthetic b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$d;->b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    iput-object p2, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$d;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetaResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMetaInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCWebViewJavaScriptBridge"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$d;->b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->access$100(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "MetaResultHandler"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$d;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;->onReceivedValue([Ljava/lang/String;)V

    return-void
.end method
