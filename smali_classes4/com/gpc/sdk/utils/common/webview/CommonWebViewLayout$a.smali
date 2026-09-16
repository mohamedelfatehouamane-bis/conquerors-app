.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/KeyboardUtils$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$a;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardVisible(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$a;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$000(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->onKeyboardVisible(ZI)V

    return-void
.end method
