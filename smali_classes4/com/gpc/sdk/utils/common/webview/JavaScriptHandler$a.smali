.class public Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->checkGPCBridgeMeta()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;->a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedValue([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;->a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->access$000(Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "existMetaBridge"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;->a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->setMetaBridge([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;->a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->access$000(Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not existMetaBridge"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;->a:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->setMetaBridge([Ljava/lang/String;)V

    return-void
.end method
