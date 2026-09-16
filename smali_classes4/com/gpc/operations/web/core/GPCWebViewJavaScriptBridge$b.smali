.class public Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->sendToJs(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
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
    iput-object p1, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    iput-object p2, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-static {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->access$100(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "GPCWebViewJavaScriptBridge"

    const-string v1, "sendToJs webView is null"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-static {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->access$100(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
