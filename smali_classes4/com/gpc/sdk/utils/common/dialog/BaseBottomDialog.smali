.class public abstract Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseBottomDialog"


# instance fields
.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/gpc/sdk/R$style;->BaseDialog:I

    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_0

    .line 4
    new-instance p1, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;)V

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 9
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Dialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->initDialog()V

    .line 12
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->initView()V

    return-void
.end method

.method private initDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/gpc/sdk/R$style;->BottomDialog_Animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public handleOnBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initView()V
.end method

.method synthetic lambda$new$0$com-gpc-sdk-utils-common-dialog-BaseBottomDialog()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onWindowFocusChanged$1$com-gpc-sdk-utils-common-dialog-BaseBottomDialog()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/gpc/sdk/R$style;->BottomDialog_Animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseBottomDialog"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 8
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
