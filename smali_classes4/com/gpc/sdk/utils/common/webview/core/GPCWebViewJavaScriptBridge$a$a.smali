.class public Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a$a;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a$a;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$a;->b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->sendToJs(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
