.class public Lcom/gpc/photoselector/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 139
    const-string v0, "status_bar_height"

    .line 141
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    nop

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected handleOnBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreate$0$com-gpc-photoselector-base-BaseActivity()V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseActivity;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseActivity;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 27
    new-instance p1, Lcom/gpc/photoselector/base/BaseActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/gpc/photoselector/base/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gpc/photoselector/base/BaseActivity;)V

    iput-object p1, p0, Lcom/gpc/photoselector/base/BaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 32
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/gpc/photoselector/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gpc/photoselector/base/BaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gpc/photoselector/base/BaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/gpc/photoselector/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/base/BaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method protected setSystemUiVisibilityAbove15(Landroid/app/Activity;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    .line 80
    new-instance p1, Lcom/gpc/photoselector/base/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/gpc/photoselector/base/BaseActivity$1;-><init>(Lcom/gpc/photoselector/base/BaseActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 89
    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    invoke-static {}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    const/4 v0, 0x2

    .line 92
    invoke-static {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    .line 93
    invoke-virtual {p0}, Lcom/gpc/photoselector/base/BaseActivity;->isDark()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 94
    invoke-static {p1, v1, v1}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 99
    invoke-static {p1, v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    :cond_2
    return-void

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    return-void
.end method

.method protected setSystemUiVisibilityBelow15(Landroid/app/Activity;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected systemUIVisibility(Landroid/app/Activity;)V
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->setSystemUiVisibilityAbove15(Landroid/app/Activity;)V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    return-void
.end method
