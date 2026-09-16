.class public Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;->handle(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;

.field public final synthetic d:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Landroid/app/Activity;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->d:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;

    iput-object p2, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->a:Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;

    iput-object p3, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->c:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->a:Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->a:Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;

    iget-object v3, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->loadUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, "GPCJavaScriptCommonBridge"

    const-string v3, "handle: "

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100400"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h$a;->c:Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
