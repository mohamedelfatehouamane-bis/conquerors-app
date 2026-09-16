.class public Lcom/gpc/photoselector/ui/PhotoSelectorActivity;
.super Lcom/gpc/photoselector/base/BaseActivity;
.source "PhotoSelectorActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;
.implements Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;,
        Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;
    }
.end annotation


# static fields
.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final LIMIT_SELECT_COUNT:Ljava/lang/String; = "limit_select_count"

.field private static final PIC_MAX_SIZE:J = 0x6400000L

.field private static final PIC_MAX_SIZE_M:J = 0x64L

.field public static final SELECTED_PHOTOS:Ljava/lang/String; = "photos"

.field public static final SELECT_PATHS:Ljava/lang/String; = "select_paths"

.field private static final TAG:Ljava/lang/String; = "PhotoSelectorActivity"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "0"

.field public static final TYPE_MIXED:Ljava/lang/String; = "1"

.field public static final TYPE_MIXED_DEGRADATION:Ljava/lang/String; = "2"

.field public static final VIDEO_MAX_SIZE:Ljava/lang/String; = "video_max_size"


# instance fields
.field private albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

.field private albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

.field private btnOk:Landroid/widget/TextView;

.field private gvPhotos:Landroid/widget/GridView;

.field private itemId:Ljava/lang/String;

.field private ivClose:Landroid/widget/ImageView;

.field private layoutAlbum:Landroid/widget/RelativeLayout;

.field protected layoutAuthorizeTip:Landroid/widget/LinearLayout;

.field private limitSelectCount:I

.field private lvAblum:Landroid/widget/ListView;

.field private maxVideoSize:J

.field private photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

.field private photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

.field private reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

.field private selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvAlbum:Landroid/widget/TextView;

.field private tvAuthorizeTip:Landroid/widget/TextView;

.field private tvGoAuthorize:Landroid/widget/TextView;

.field private tvPreview:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/gpc/photoselector/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->limitSelectCount:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selectedPaths:Ljava/util/List;

    const-wide/32 v0, 0x3200000

    .line 82
    iput-wide v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->maxVideoSize:J

    .line 431
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$1;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    .line 438
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)Lcom/gpc/photoselector/ui/AlbumAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reset()V

    return-void
.end method

.method static synthetic access$300(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private album()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->popAlbum()V

    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    return-void
.end method

.method private hideAlbum()V
    .locals 3

    .line 265
    new-instance v0, Lcom/gpc/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_down:I

    invoke-direct {v0, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private isSelected(Lcom/gpc/photoselector/model/PhotoModel;)Z
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selectedPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private ok()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->setResult(I)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v2, "photos"

    iget-object v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 226
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "TYPE"

    iget-object v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->finish()V

    return-void
.end method

.method private popAlbum()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    new-instance v0, Lcom/gpc/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_up_current:I

    invoke-direct {v0, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method private priview()V
    .locals 3

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v1, "photos"

    iget-object v2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 241
    const-class v1, Lcom/gpc/photoselector/ui/MixedPreviewActivity;

    invoke-static {p0, v1, v0}, Lcom/gpc/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const-string v1, "ops_a_pic_preview"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 87
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

    .line 89
    const-string v1, "PhotoSelectorActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public gotoAuthorize(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected handleOnBackPressed()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->preRelease()V

    const/4 v0, 0x0

    return v0
.end method

.method public hideAuthorizeTip()V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const-string v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 479
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$4;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$4;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 485
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method synthetic lambda$onCreate$0$com-gpc-photoselector-ui-PhotoSelectorActivity(Landroid/view/View;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    return-void
.end method

.method public onCheckedChanged(Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V
    .locals 9

    .line 318
    const-string p2, "video"

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ops_a_send_file_error_for_too_large"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 319
    iget-wide v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->maxVideoSize:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    .line 320
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->maxVideoSize:J

    cmp-long p2, v5, v7

    if-ltz p2, :cond_1

    .line 321
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getSize()J

    move-result-wide v3

    const-wide/32 v5, 0x6400000

    cmp-long p2, v3, v5

    if-ltz p2, :cond_1

    const-wide/16 p1, 0x64

    .line 326
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 331
    :cond_1
    invoke-virtual {p1, p3}, Lcom/gpc/photoselector/model/PhotoModel;->setChecked(Z)V

    .line 332
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->isSelected(Lcom/gpc/photoselector/model/PhotoModel;)Z

    move-result p2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isSelected:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhotoSelectorActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "selected.size():"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "limitSelectCount:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->limitSelectCount:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->limitSelectCount:I

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "ops_a_limit_select_by_count"

    invoke-static {p2, p3}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 342
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->limitSelect()V

    .line 344
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setChecked(Z)V

    .line 345
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->notifyDataSetChanged()V

    return-void

    .line 350
    :cond_2
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->enableSelect()V

    if-eqz p3, :cond_4

    .line 352
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 353
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_3
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    :goto_0
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gpc/photoselector/model/PhotoModel;

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p3, p2}, Lcom/gpc/photoselector/model/PhotoModel;->setIndex(I)V

    add-int/2addr p2, v2

    goto :goto_1

    .line 367
    :cond_5
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->limitSelectCount:I

    if-lt p1, p2, :cond_6

    .line 368
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->limitSelect()V

    goto :goto_2

    .line 370
    :cond_6
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->enableSelect()V

    .line 372
    :goto_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->notifyDataSetChanged()V

    .line 374
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const-string p2, "ops_a_pic_preview"

    invoke-static {p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 377
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 378
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    if-ne v0, v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->ok()V

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_album_ar:I

    if-ne v0, v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->album()V

    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_preview_ar:I

    if-ne v0, v1, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->priview()V

    return-void

    .line 196
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    if-ne v0, v1, :cond_3

    .line 197
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->preRelease()V

    .line 198
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->finish()V

    return-void

    .line 199
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->iv_close:I

    if-ne v0, v1, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAuthorizeTip()V

    return-void

    .line 201
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_go_authorize:I

    if-ne v0, v1, :cond_5

    .line 202
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->gotoAuthorize(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 96
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    .line 98
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_photoselector:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->setContentView(I)V

    .line 99
    sget p1, Lcom/photoselectorforts/R$id;->tv_title_vb:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 100
    const-string v0, "ops_a_common_back"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "limit_select_count"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->limitSelectCount:I

    .line 104
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_max_size"

    const-wide/32 v1, 0x3200000

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->maxVideoSize:J

    .line 105
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "select_paths"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->selectedPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "item_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->itemId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    .line 113
    sget p1, Lcom/photoselectorforts/R$id;->layout_authorize_tip:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    .line 114
    sget p1, Lcom/photoselectorforts/R$id;->tv_authorize_tip:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/photoselectorforts/R$id;->tv_go_authorize:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvGoAuthorize:Landroid/widget/TextView;

    .line 116
    const-string v0, "ops_a_goto_setting"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvGoAuthorize:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p1, Lcom/photoselectorforts/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->ivClose:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const-string p1, "1"

    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    const-string v0, "ops_a_allow_to_access_photos_and_videos"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance p1, Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    const-string v0, "ops_a_allow_to_access_photos"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance p1, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    .line 129
    :goto_0
    sget p1, Lcom/photoselectorforts/R$id;->tv_title_lh:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    .line 130
    const-string v0, "ops_a_recent_pictures"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget p1, Lcom/photoselectorforts/R$id;->gv_photos_ar:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    .line 132
    sget p1, Lcom/photoselectorforts/R$id;->lv_ablum_ar:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    .line 133
    sget p1, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->btnOk:Landroid/widget/TextView;

    .line 134
    const-string v1, "ops_a_ok"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget p1, Lcom/photoselectorforts/R$id;->tv_album_ar:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    .line 136
    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget p1, Lcom/photoselectorforts/R$id;->tv_preview_ar:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    .line 138
    const-string v0, "ops_a_pic_preview"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget p1, Lcom/photoselectorforts/R$id;->layout_album_ar:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    .line 140
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {p0}, Lcom/gpc/photoselector/util/CommonUtils;->getWidthPixels(Landroid/app/Activity;)I

    move-result v3

    move-object v5, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;)V

    iput-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    .line 148
    iget-object p1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    new-instance p1, Lcom/gpc/photoselector/ui/AlbumAdapter;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/gpc/photoselector/ui/AlbumAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    .line 151
    iget-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object p1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    sget p1, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_btn_green_ripple_radius_4:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 158
    iget-object v1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_btn_black_ripple:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    sget p1, Lcom/photoselectorforts/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 162
    iget-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    sget p1, Lcom/photoselectorforts/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 164
    iget-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvGoAuthorize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {p1, v0}, Lcom/gpc/photoselector/domain/SelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 167
    iget-object p1, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v0, v4, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-interface {p1, v0}, Lcom/gpc/photoselector/domain/SelectorDomain;->updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 451
    invoke-super {p0}, Lcom/gpc/photoselector/base/BaseActivity;->onDestroy()V

    .line 452
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->release()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/model/PhotoModel;

    .line 283
    const-string v0, "video"

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PlayUri"

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-class p1, Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-static {p0, p1, v0}, Lcom/gpc/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 289
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-class p1, Lcom/gpc/photoselector/ui/PhotoPreviewActivity;

    invoke-static {p0, p1, v0}, Lcom/gpc/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 396
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/photoselector/model/AlbumModel;

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 397
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 398
    invoke-virtual {p1, p5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/model/AlbumModel;

    if-ne p5, p3, :cond_0

    const/4 v1, 0x1

    .line 400
    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/AlbumModel;->setCheck(Z)V

    goto :goto_1

    .line 402
    :cond_0
    invoke-virtual {v0, p4}, Lcom/gpc/photoselector/model/AlbumModel;->setCheck(Z)V

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/AlbumAdapter;->notifyDataSetChanged()V

    .line 405
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    .line 406
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ops_a_recent_pictures"

    invoke-static {p3}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 411
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {p1, p2}, Lcom/gpc/photoselector/domain/SelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void

    .line 413
    :cond_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {p1, p2, p3}, Lcom/gpc/photoselector/domain/SelectorDomain;->getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void
.end method

.method protected refreshData()V
    .locals 2

    .line 179
    const-string v0, "1"

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {v0, v1}, Lcom/gpc/photoselector/domain/SelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 185
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-interface {v0, v1}, Lcom/gpc/photoselector/domain/SelectorDomain;->updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    return-void
.end method

.method public showAuthorizeTip()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 460
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$3;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$3;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
