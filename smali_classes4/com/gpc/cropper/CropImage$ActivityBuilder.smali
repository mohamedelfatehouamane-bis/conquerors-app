.class public final Lcom/gpc/cropper/CropImage$ActivityBuilder;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityBuilder"
.end annotation


# instance fields
.field private final mOptions:Lcom/gpc/cropper/CropImageOptions;

.field private final mSource:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    .line 482
    new-instance p1, Lcom/gpc/cropper/CropImageOptions;

    invoke-direct {p1}, Lcom/gpc/cropper/CropImageOptions;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/gpc/cropper/CropImage$1;)V
    .locals 0

    .line 467
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityBuilder;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 489
    const-class v0, Lcom/gpc/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageOptions;->validate()V

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 499
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 500
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 501
    const-string p2, "CROP_IMAGE_EXTRA_SOURCE"

    iget-object v1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 502
    const-string p2, "CROP_IMAGE_EXTRA_OPTIONS"

    iget-object v1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 503
    const-string p2, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public setActivityMenuIconColor(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->activityMenuIconColor:I

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAllowCounterRotation(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->allowCounterRotation:Z

    return-object p0
.end method

.method public setAllowFlipping(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->allowFlipping:Z

    return-object p0
.end method

.method public setAllowRotation(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->allowRotation:Z

    return-object p0
.end method

.method public setAspectRatio(II)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    .line 683
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p2, p1, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    .line 684
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setAutoZoomEnabled(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    return-object p0
.end method

.method public setBorderCornerColor(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    return-object p0
.end method

.method public setBorderCornerLength(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    return-object p0
.end method

.method public setBorderCornerOffset(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    return-object p0
.end method

.method public setBorderCornerThickness(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    return-object p0
.end method

.method public setBorderLineColor(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    return-object p0
.end method

.method public setBorderLineThickness(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    return-object p0
.end method

.method public setCropMenuCropButtonIcon(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    return-object p0
.end method

.method public setCropMenuCropButtonTitle(Ljava/lang/CharSequence;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public setFixAspectRatio(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setFlipHorizontally(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    return-object p0
.end method

.method public setFlipVertically(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    return-object p0
.end method

.method public setGuidelines(Lcom/gpc/cropper/CropImageView$Guidelines;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public setGuidelinesColor(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    return-object p0
.end method

.method public setGuidelinesThickness(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    return-object p0
.end method

.method public setInitialCropWindowPaddingRatio(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    return-object p0
.end method

.method public setInitialCropWindowRectangle(Landroid/graphics/Rect;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setInitialRotation(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    return-object p0
.end method

.method public setMaxCropResultSize(II)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 798
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p2, p1, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    return-object p0
.end method

.method public setMaxZoom(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    return-object p0
.end method

.method public setMinCropResultSize(II)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    .line 787
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p2, p1, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    return-object p0
.end method

.method public setMinCropWindowSize(II)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 776
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p2, p1, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    return-object p0
.end method

.method public setMultiTouchEnabled(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    return-object p0
.end method

.method public setNoOutputImage(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->noOutputImage:Z

    return-object p0
.end method

.method public setOutputCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setOutputCompressQuality(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->outputCompressQuality:I

    return-object p0
.end method

.method public setOutputUri(Landroid/net/Uri;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRequestedSize(II)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 853
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->setRequestedSize(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Lcom/gpc/cropper/CropImage$ActivityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestedSize(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    .line 863
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p2, p1, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    .line 864
    iget-object p1, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p3, p1, Lcom/gpc/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->rotationDegrees:I

    return-object p0
.end method

.method public setScaleType(Lcom/gpc/cropper/CropImageView$ScaleType;)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public setShowCropOverlay(Z)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    return-object p0
.end method

.method public setSnapRadius(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    return-object p0
.end method

.method public setTouchRadius(F)Lcom/gpc/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    iput p1, v0, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    return-object p0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageOptions;->validate()V

    .line 514
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/gpc/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/gpc/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageOptions;->validate()V

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xcb

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1

    .line 543
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 564
    invoke-virtual {p0, p1, p3}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 533
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 553
    invoke-virtual {p0, p1, p3}, Lcom/gpc/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
