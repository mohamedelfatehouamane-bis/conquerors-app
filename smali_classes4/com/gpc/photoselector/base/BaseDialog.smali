.class public Lcom/gpc/photoselector/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected handleOnBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreate$0$com-gpc-photoselector-base-BaseDialog()V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseDialog;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-gpc-photoselector-base-BaseDialog(Landroid/content/DialogInterface;)V
    .locals 2

    .line 34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 35
    new-instance p1, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda3;-><init>(Lcom/gpc/photoselector/base/BaseDialog;)V

    iput-object p1, p0, Lcom/gpc/photoselector/base/BaseDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 40
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/gpc/photoselector/base/BaseDialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gpc/photoselector/base/BaseDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-gpc-photoselector-base-BaseDialog(Landroid/content/DialogInterface;)V
    .locals 1

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/gpc/photoselector/base/BaseDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz p1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/gpc/photoselector/base/BaseDialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/photoselector/base/BaseDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {p1, v0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseDialog;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/photoselector/base/BaseDialog;)V

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/base/BaseDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 44
    new-instance p1, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/gpc/photoselector/base/BaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/gpc/photoselector/base/BaseDialog;)V

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/base/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
