.class public Lcom/igg/sdk/invite/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected hideLoading()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/igg/sdk/invite/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/igg/sdk/invite/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/igg/sdk/invite/BaseActivity;->setDefaultLanguage()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/igg/sdk/invite/BaseActivity;->setDefaultLanguage()V

    return-void
.end method

.method public setDefaultLanguage()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/sdk/invite/InviteManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/igg/sdk/invite/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 57
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    invoke-virtual {p0}, Lcom/igg/sdk/invite/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected showLoading()V
    .locals 0

    return-void
.end method

.method protected showLoading(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
