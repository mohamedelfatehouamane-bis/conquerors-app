.class public Lcom/gpc/photoselector/ui/VideoPreviewActivity;
.super Landroid/app/Activity;
.source "VideoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPreviewActivity"


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private layoutTop:Landroid/widget/RelativeLayout;

.field protected playUri:Landroid/net/Uri;

.field private pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

.field private select:Landroid/widget/Button;

.field private tvPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/VideoPreviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->layoutTop:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 45
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/gpc/photoselector/util/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 47
    const-string v1, "VideoPreviewActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselectorforts/R$id;->btn_back_root:I

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->requestWindowFeature(I)Z

    .line 56
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_videopreview:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->setContentView(I)V

    .line 57
    sget p1, Lcom/photoselectorforts/R$id;->layout_top_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->layoutTop:Landroid/widget/RelativeLayout;

    .line 58
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->btnBack:Landroid/widget/ImageView;

    .line 59
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_root:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcom/photoselectorforts/R$id;->bt_select:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->select:Landroid/widget/Button;

    .line 62
    const-string v0, "ops_a_ok"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget p1, Lcom/photoselectorforts/R$id;->tv_percent_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    .line 64
    sget p1, Lcom/photoselectorforts/R$id;->play_view:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/ui/VideoPreview;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    .line 66
    iget-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->select:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    const-string v0, "PlayUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->playUri:Landroid/net/Uri;

    .line 77
    :cond_0
    sget p1, Lcom/photoselectorforts/R$anim;->ops_a_activity_alpha_action_in:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->overridePendingTransition(II)V

    .line 79
    iget-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    new-instance v0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;-><init>(Lcom/gpc/photoselector/ui/VideoPreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/ui/VideoPreview;->setPlayerListener(Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->play()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 132
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->onStop()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->pvPlayerView:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-virtual {v1, v0}, Lcom/gpc/photoselector/ui/VideoPreview;->play(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
