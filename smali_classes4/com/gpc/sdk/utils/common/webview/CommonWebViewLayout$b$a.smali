.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$a;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$a;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method
