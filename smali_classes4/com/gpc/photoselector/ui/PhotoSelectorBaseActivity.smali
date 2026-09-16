.class public Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;
.super Lcom/gpc/photoselector/base/BaseActivity;
.source "PhotoSelectorBaseActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;
.implements Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final LIMIT_SELECT_COUNT:Ljava/lang/String; = "limit_select_count"

.field private static final PIC_MAX_SIZE:J = 0x6400000L

.field private static final PIC_MAX_SIZE_M:J = 0x64L

.field public static final SELECTED_PHOTOS:Ljava/lang/String; = "photos"

.field public static final SELECT_PATHS:Ljava/lang/String; = "select_paths"

.field private static final TAG:Ljava/lang/String; = "PhotoSelectorActivity"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TYPE_AVATAR:Ljava/lang/String; = "3"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "0"

.field public static final TYPE_MIXED:Ljava/lang/String; = "1"

.field public static final TYPE_MIXED_DEGRADATION:Ljava/lang/String; = "2"

.field private static final VIDEO_MAX_SIZE:J = 0x3200000L

.field private static final VIDEO_MAX_SIZE_M:J = 0x32L


# instance fields
.field private albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

.field private albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

.field private btnOk:Landroid/widget/TextView;

.field private gvPhotos:Landroid/widget/GridView;

.field private isTypeAvatar:Z

.field private itemId:Ljava/lang/String;

.field private ivClose:Landroid/widget/ImageView;

.field private layoutAlbum:Landroid/widget/RelativeLayout;

.field protected layoutAuthorizeTip:Landroid/widget/LinearLayout;

.field private limitSelectCount:I

.field private lvAlbum:Landroid/widget/ListView;

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

.field private tvTitleVb:Landroid/widget/TextView;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/gpc/photoselector/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->limitSelectCount:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selectedPaths:Ljava/util/List;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    .line 420
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$1;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    .line 427
    new-instance v0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$2;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)Lcom/gpc/photoselector/ui/AlbumAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private album()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->popAlbum()V

    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAlbum()V

    return-void
.end method

.method private hideAlbum()V
    .locals 3

    .line 262
    new-instance v0, Lcom/gpc/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_down:I

    invoke-direct {v0, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "limit_select_count"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->limitSelectCount:I

    .line 122
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_paths"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selectedPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->itemId:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->type:Ljava/lang/String;

    .line 129
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 8

    .line 136
    sget v0, Lcom/photoselectorforts/R$id;->layout_authorize_tip:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    .line 137
    sget v0, Lcom/photoselectorforts/R$id;->tv_authorize_tip:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/photoselectorforts/R$id;->tv_go_authorize:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvGoAuthorize:Landroid/widget/TextView;

    .line 139
    const-string v1, "ops_a_goto_setting"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvGoAuthorize:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/photoselectorforts/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->ivClose:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const-string v0, "1"

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    const-string v1, "ops_a_allow_to_access_photos_and_videos"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAuthorizeTip:Landroid/widget/TextView;

    const-string v1, "ops_a_allow_to_access_photos"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    sget v0, Lcom/photoselectorforts/R$id;->tv_title_vb:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvTitleVb:Landroid/widget/TextView;

    .line 150
    const-string v1, "ops_a_common_back"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v0, Lcom/photoselectorforts/R$id;->tv_title_lh:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvTitle:Landroid/widget/TextView;

    .line 152
    const-string v1, "ops_a_recent_pictures"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v0, Lcom/photoselectorforts/R$id;->gv_photos_ar:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->gvPhotos:Landroid/widget/GridView;

    .line 154
    sget v0, Lcom/photoselectorforts/R$id;->lv_ablum_ar:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->lvAlbum:Landroid/widget/ListView;

    .line 155
    sget v0, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->btnOk:Landroid/widget/TextView;

    .line 156
    const-string v2, "ops_a_ok"

    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget v0, Lcom/photoselectorforts/R$id;->tv_album_ar:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAlbum:Landroid/widget/TextView;

    .line 158
    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v0, Lcom/photoselectorforts/R$id;->tv_preview_ar:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    .line 160
    const-string v1, "ops_a_pic_preview"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget v0, Lcom/photoselectorforts/R$id;->layout_album_ar:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    .line 162
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {p0}, Lcom/gpc/photoselector/util/CommonUtils;->getWidthPixels(Landroid/app/Activity;)I

    move-result v4

    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    xor-int/lit8 v7, v0, 0x1

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;Z)V

    iput-object v1, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    .line 169
    iget-object v0, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->gvPhotos:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    new-instance v0, Lcom/gpc/photoselector/ui/AlbumAdapter;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/gpc/photoselector/ui/AlbumAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    .line 172
    iget-object v1, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->lvAlbum:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v0, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->lvAlbum:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    sget v0, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    sget v1, Lcom/photoselectorforts/R$drawable;->ops_a_btn_green_ripple_radius_4:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 178
    iget-object v2, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    sget v1, Lcom/photoselectorforts/R$drawable;->ops_a_btn_black_ripple:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 182
    iget-object v1, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 184
    iget-object v1, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvGoAuthorize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-boolean v0, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, v5, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->btnOk:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isSelected(Lcom/gpc/photoselector/model/PhotoModel;)Z
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selectedPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
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

.method private popAlbum()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    new-instance v0, Lcom/gpc/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_up_current:I

    invoke-direct {v0, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method private preview()V
    .locals 3

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    const-string v1, "photos"

    iget-object v2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    const-class v1, Lcom/gpc/photoselector/ui/MixedPreviewActivity;

    invoke-static {p0, v1, v0}, Lcom/gpc/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 88
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

    .line 90
    const-string v1, "PhotoSelectorActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public gotoAuthorize(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected handleOnBackPressed()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAlbum()V

    const/4 v0, 0x1

    return v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->preRelease()V

    .line 391
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelectCancel()V

    const/4 v0, 0x0

    return v0
.end method

.method public hideAuthorizeTip()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

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

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 468
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$4;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$4;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected initPhotoData()V
    .locals 2

    .line 110
    const-string v0, "1"

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {v0, v1}, Lcom/gpc/photoselector/domain/SelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 116
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->albumListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-interface {v0, v1}, Lcom/gpc/photoselector/domain/SelectorDomain;->updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-gpc-photoselector-ui-PhotoSelectorBaseActivity(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAlbum()V

    return-void
.end method

.method public onCheckedChanged(Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 321
    const-string p2, "video"

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ops_a_send_file_error_for_too_large"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getSize()J

    move-result-wide v3

    const-wide/32 v5, 0x3200000

    cmp-long p2, v3, v5

    if-ltz p2, :cond_1

    const-wide/16 p1, 0x32

    .line 323
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

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getSize()J

    move-result-wide v3

    const-wide/32 v5, 0x6400000

    cmp-long p2, v3, v5

    if-ltz p2, :cond_1

    const-wide/16 p1, 0x64

    .line 328
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

    .line 333
    :cond_1
    invoke-virtual {p1, p3}, Lcom/gpc/photoselector/model/PhotoModel;->setChecked(Z)V

    .line 334
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isSelected(Lcom/gpc/photoselector/model/PhotoModel;)Z

    move-result p2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isSelected:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhotoSelectorActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "selected.size():"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "limitSelectCount:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->limitSelectCount:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->limitSelectCount:I

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 343
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

    .line 344
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->limitSelect()V

    .line 346
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setChecked(Z)V

    .line 347
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->notifyDataSetChanged()V

    return-void

    .line 352
    :cond_2
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->enableSelect()V

    if-eqz p3, :cond_4

    .line 354
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 355
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 359
    :cond_4
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    :goto_0
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

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

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p3, p2}, Lcom/gpc/photoselector/model/PhotoModel;->setIndex(I)V

    add-int/2addr p2, v2

    goto :goto_1

    .line 369
    :cond_5
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->limitSelectCount:I

    if-lt p1, p2, :cond_6

    .line 370
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->limitSelect()V

    goto :goto_2

    .line 372
    :cond_6
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->enableSelect()V

    .line 374
    :goto_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    const-string p2, "ops_a_pic_preview"

    invoke-static {p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 379
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 380
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->btn_right_lh:I

    if-ne v0, v1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelectFinish(Ljava/util/ArrayList;)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_album_ar:I

    if-ne v0, v1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->album()V

    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_preview_ar:I

    if-ne v0, v1, :cond_2

    .line 198
    iget-boolean p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    if-nez p1, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->preview()V

    return-void

    .line 202
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->bv_back_lh:I

    if-ne v0, v1, :cond_3

    .line 203
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->preRelease()V

    .line 204
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelectCancel()V

    return-void

    .line 205
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->iv_close:I

    if-ne v0, v1, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAuthorizeTip()V

    return-void

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->tv_go_authorize:I

    if-ne v0, v1, :cond_5

    .line 208
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->type:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->gotoAuthorize(Landroid/view/View;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    .line 99
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_photoselector_base:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->initData()V

    .line 101
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->initView()V

    .line 102
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 440
    invoke-super {p0}, Lcom/gpc/photoselector/base/BaseActivity;->onDestroy()V

    .line 441
    invoke-static {}, Lcom/gpc/photoselector/util/BitmapManager;->release()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoAdapter:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/model/PhotoModel;

    .line 280
    const-string v0, "video"

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PlayUri"

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-class p1, Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-static {p0, p1, v0}, Lcom/gpc/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->isTypeAvatar:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->onPhotoSelected(Lcom/gpc/photoselector/model/PhotoModel;)V

    return-void

    .line 291
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
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

    .line 399
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/photoselector/model/AlbumModel;

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 400
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 401
    invoke-virtual {p1, p5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/model/AlbumModel;

    if-ne p5, p3, :cond_0

    const/4 v1, 0x1

    .line 403
    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/AlbumModel;->setCheck(Z)V

    goto :goto_1

    .line 405
    :cond_0
    invoke-virtual {v0, p4}, Lcom/gpc/photoselector/model/AlbumModel;->setCheck(Z)V

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->albumAdapter:Lcom/gpc/photoselector/ui/AlbumAdapter;

    invoke-virtual {p1}, Lcom/gpc/photoselector/ui/AlbumAdapter;->notifyDataSetChanged()V

    .line 408
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAlbum()V

    .line 409
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ops_a_recent_pictures"

    invoke-static {p3}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 414
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {p1, p2}, Lcom/gpc/photoselector/domain/SelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void

    .line 416
    :cond_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->photoSelectorDomain:Lcom/gpc/photoselector/domain/SelectorDomain;

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->reccentListener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-interface {p1, p2, p3}, Lcom/gpc/photoselector/domain/SelectorDomain;->getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void
.end method

.method protected onPhotoSelectCancel()V
    .locals 0

    return-void
.end method

.method protected onPhotoSelectFinish(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPhotoSelected(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0

    return-void
.end method

.method protected reset()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    const-string v1, "ops_a_pic_preview"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvPreview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showAuthorizeTip()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 449
    new-instance v1, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
