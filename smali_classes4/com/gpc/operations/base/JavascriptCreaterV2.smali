.class public Lcom/gpc/operations/base/JavascriptCreaterV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/base/JavascriptCreaterV2$Uploader;,
        Lcom/gpc/operations/base/JavascriptCreaterV2$Repayment;,
        Lcom/gpc/operations/base/JavascriptCreaterV2$Keyboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JavascriptCreaterV2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static didReceivedRemoteNotification(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->getDidReceivedRemoteNotificationResponserJS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static disappear()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->getDidDisappearResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localHistoryGoBack()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->getGoBackResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static webViewScrollToTop()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->getScrollToTopResponserJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
