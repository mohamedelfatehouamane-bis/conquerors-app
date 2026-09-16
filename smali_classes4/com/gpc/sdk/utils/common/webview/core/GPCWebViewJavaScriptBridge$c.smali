.class public Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->existMeta(Ljava/lang/String;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

.field public final synthetic b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->b:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    iput-object p2, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMetaInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCWebViewJavaScriptBridge"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    invoke-interface {v3, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;->onReceivedValue([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {v2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;->onReceivedValue([Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->a:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;->onReceivedValue([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$c;->a(Ljava/lang/String;)V

    return-void
.end method
