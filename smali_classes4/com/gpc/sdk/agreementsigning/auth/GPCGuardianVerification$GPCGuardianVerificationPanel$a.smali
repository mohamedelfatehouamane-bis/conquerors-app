.class public Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel$a;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeButtonClickListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel$a;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
