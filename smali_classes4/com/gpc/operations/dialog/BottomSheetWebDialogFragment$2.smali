.class Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$2;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 4
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$2;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-static {p1}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$300(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
