.class public Lcom/gpc/sdk/GPCBaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCBaseActivity"


# instance fields
.field protected context:Landroid/content/Context;

.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getCurrentI18NItem()Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/gpc/sdk/utils/common/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCBaseActivity;->context:Landroid/content/Context;

    .line 2
    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCBaseActivity"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public handleOnBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreate$0$com-gpc-sdk-GPCBaseActivity()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCBaseActivity;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCBaseActivity;->handleOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 4
    new-instance p1, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/GPCBaseActivity;)V

    iput-object p1, p0, Lcom/gpc/sdk/GPCBaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 9
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/GPCBaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/GPCBaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/GPCBaseActivity;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method
