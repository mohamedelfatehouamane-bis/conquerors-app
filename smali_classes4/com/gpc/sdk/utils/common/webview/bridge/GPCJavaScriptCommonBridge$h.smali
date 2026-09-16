.class public Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    .line 3
    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Landroid/app/Activity;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
