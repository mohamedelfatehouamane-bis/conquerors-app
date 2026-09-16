.class public Lcom/gpc/cropper/CropImageActivity;
.super Lcom/gpc/photoselector/base/BaseActivity;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final IMAGE_RESOURCE:Ljava/lang/String; = "IMAGE_RESOURCE"

.field private static final TAG:Ljava/lang/String; = "CropImageActivity"


# instance fields
.field private mCropImageUri:Landroid/net/Uri;

.field private mCropImageView:Lcom/gpc/cropper/CropImageView;

.field private mOptions:Lcom/gpc/cropper/CropImageOptions;

.field protected photos:Lcom/gpc/photoselector/model/PhotoModel;

.field protected savadirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/gpc/photoselector/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/gpc/photoselector/util/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 73
    const-string v1, "CropImageActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected cropImage()V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/gpc/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v1, v1, v0}, Lcom/gpc/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->getOutputUri()Landroid/net/Uri;

    move-result-object v3

    .line 196
    const-string v0, "CropImageActivity"

    const-string v1, "cropImage saveCroppedImageAsync "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object v4, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget v5, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressQuality:I

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget v6, v0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget v7, v0, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object v8, v0, Lcom/gpc/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual/range {v2 .. v8}, Lcom/gpc/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method protected getOutputUri()Landroid/net/Uri;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/gpc/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 220
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 223
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_2

    .line 224
    const-string v0, ".jpg"

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_3

    const-string v0, ".png"

    goto :goto_1

    :cond_3
    const-string v0, ".webp"

    .line 227
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->savadirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 231
    :cond_4
    const-string v2, "cropped"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create temp file for output image"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 9

    .line 260
    new-instance v0, Lcom/gpc/cropper/CropImage$ActivityResult;

    iget-object v1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 262
    invoke-virtual {v1}, Lcom/gpc/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 265
    invoke-virtual {v2}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 266
    invoke-virtual {v2}, Lcom/gpc/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 267
    invoke-virtual {v2}, Lcom/gpc/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    iget-object v2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 268
    invoke-virtual {v2}, Lcom/gpc/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 270
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 272
    const-string p2, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method protected handleOnBackPressed()Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->setResultCancel()V

    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected initCropImageOption(Lcom/gpc/cropper/CropImageOptions;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->setResultCancel()V

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 151
    invoke-static {p0, p3}, Lcom/gpc/cropper/CropImage;->getPickImageResultUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    .line 154
    invoke-static {p0, p1}, Lcom/gpc/cropper/CropImage;->isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/gpc/cropper/CropImageActivity;[Ljava/lang/String;I)V

    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->cropImage()V

    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/gpc/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, p0}, Lcom/gpc/cropper/CropImageActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    .line 83
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_cropper_activity:I

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->setContentView(I)V

    .line 84
    sget p1, Lcom/photoselectorforts/R$id;->tv_title_vb:I

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    const-string v0, "ops_a_common_back"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget p1, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget p1, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 88
    const-string v0, "ops_a_ok"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v1, Lcom/photoselectorforts/R$drawable;->ops_a_btn_green_ripple_radius_4:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 95
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget p1, Lcom/photoselectorforts/R$drawable;->ops_a_btn_black_ripple:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    sget p1, Lcom/photoselectorforts/R$id;->cropImageView:I

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gpc/cropper/CropImageView;

    iput-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    .line 101
    new-instance p1, Lcom/gpc/cropper/CropImageOptions;

    invoke-direct {p1}, Lcom/gpc/cropper/CropImageOptions;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    .line 102
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageActivity;->initCropImageOption(Lcom/gpc/cropper/CropImageOptions;)V

    .line 103
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    const-string v0, "IMAGE_RESOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/model/PhotoModel;

    iput-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->photos:Lcom/gpc/photoselector/model/PhotoModel;

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->photos:Lcom/gpc/photoselector/model/PhotoModel;

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/gpc/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 111
    invoke-static {p0}, Lcom/gpc/photoselector/util/ImageLoaderHelper;->initImageLoader(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->init()V

    return-void
.end method

.method public onCropImageComplete(Lcom/gpc/cropper/CropImageView;Lcom/gpc/cropper/CropImageView$CropResult;)V
    .locals 1

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "result.getUri(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/cropper/CropImageView$CropResult;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CropImageActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetImageUriComplete(Lcom/gpc/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    if-nez p3, :cond_2

    .line 171
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object p1, p1, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget-object p2, p2, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget p1, p1, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    .line 175
    iget-object p1, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageActivity;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iget p2, p2, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropImageView;->setRotatedDegrees(I)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 178
    invoke-virtual {p0, p1, p3, p2}, Lcom/gpc/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/gpc/photoselector/base/BaseActivity;->onStart()V

    .line 122
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/gpc/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 123
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/gpc/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/gpc/photoselector/base/BaseActivity;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 130
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method

.method protected rotateImage(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/gpc/cropper/CropImageActivity;->mCropImageView:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropImageView;->rotateImage(I)V

    return-void
.end method

.method protected setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xcc

    .line 244
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/gpc/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->finish()V

    return-void
.end method

.method protected setResultCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageActivity;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageActivity;->finish()V

    return-void
.end method
