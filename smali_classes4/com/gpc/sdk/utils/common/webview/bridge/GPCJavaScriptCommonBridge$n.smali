.class public Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$n;
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$n;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptCaller;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$n;->a:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    iget-object p1, p1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->closeView()V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "behaviour is null"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 13
    const-string v1, "GPCJavaScriptCommonBridge"

    const-string v2, "handle: "

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100400"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    .line 16
    :goto_0
    invoke-interface {p2, v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
