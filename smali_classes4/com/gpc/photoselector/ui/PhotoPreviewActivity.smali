.class public Lcom/gpc/photoselector/ui/PhotoPreviewActivity;
.super Landroid/app/Activity;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoPreviewActivity"


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private layoutTop:Landroid/widget/RelativeLayout;

.field private photoPreview:Lcom/gpc/photoselector/ui/PhotoPreview;

.field protected playUri:Landroid/net/Uri;

.field private select:Landroid/widget/Button;

.field private tvPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 43
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

    .line 45
    const-string v1, "PhotoPreviewActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselectorforts/R$id;->btn_back_root:I

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->requestWindowFeature(I)Z

    .line 54
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_photopreview:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->setContentView(I)V

    .line 55
    sget p1, Lcom/photoselectorforts/R$id;->layout_top_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->layoutTop:Landroid/widget/RelativeLayout;

    .line 56
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->btnBack:Landroid/widget/ImageView;

    .line 57
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_root:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget p1, Lcom/photoselectorforts/R$id;->bt_select:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->select:Landroid/widget/Button;

    .line 60
    const-string v0, "ops_a_ok"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget p1, Lcom/photoselectorforts/R$id;->tv_percent_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    .line 62
    sget p1, Lcom/photoselectorforts/R$id;->view_photo_preview:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/ui/PhotoPreview;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->photoPreview:Lcom/gpc/photoselector/ui/PhotoPreview;

    .line 64
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->select:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {p0}, Lcom/gpc/photoselector/util/ImageLoaderHelper;->initImageLoader(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    const-string v0, "PlayUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->playUri:Landroid/net/Uri;

    .line 75
    :cond_0
    sget p1, Lcom/photoselectorforts/R$anim;->ops_a_activity_alpha_action_in:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->overridePendingTransition(II)V

    .line 76
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->play()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;->photoPreview:Lcom/gpc/photoselector/ui/PhotoPreview;

    invoke-virtual {v1, v0}, Lcom/gpc/photoselector/ui/PhotoPreview;->loadImage(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
