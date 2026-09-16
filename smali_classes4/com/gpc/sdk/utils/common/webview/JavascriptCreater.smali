.class public Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private metaBridge:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disappear()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->getDidDisappearResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayHeight(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->getKeyboardDisplayHeightResponserJS(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isExistGPCBridgeV1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->metaBridge:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return v1

    .line 3
    :cond_1
    aget-object v0, v0, v1

    const-string v1, "gpc_jsbridge_v1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public localHistoryGoBack()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->getGoBackResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMetaBridge([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->metaBridge:[Ljava/lang/String;

    return-void
.end method

.method public webViewScrollToTop()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->getScrollToTopResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
