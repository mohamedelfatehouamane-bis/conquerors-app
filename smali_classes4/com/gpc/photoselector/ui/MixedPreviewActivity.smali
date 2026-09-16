.class public Lcom/gpc/photoselector/ui/MixedPreviewActivity;
.super Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;
.source "MixedPreviewActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MixedPreviewActivity"


# instance fields
.field private photoSelectorDomain:Lcom/gpc/photoselector/domain/MixedSelectorDomain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 26
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/gpc/photoselector/util/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 28
    const-string v1, "MixedPreviewActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-super {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "photos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "position"

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->photos:Ljava/util/List;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->current:I

    .line 50
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->updatePercent()V

    .line 51
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->bindData()V

    return-void

    .line 52
    :cond_1
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->current:I

    .line 55
    invoke-static {v0}, Lcom/gpc/photoselector/util/CommonUtils;->isNull(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ops_a_recent_pictures"

    invoke-static {p1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p1, p0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p1, v0, p0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance p1, Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    .line 39
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPhotoLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->photos:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->updatePercent()V

    .line 71
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/MixedPreviewActivity;->bindData()V

    return-void
.end method
