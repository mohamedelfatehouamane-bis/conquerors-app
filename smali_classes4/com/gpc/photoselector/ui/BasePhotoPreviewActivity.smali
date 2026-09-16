.class public Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;
.super Landroid/app/Activity;
.source "BasePhotoPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field protected current:I

.field protected isUp:Z

.field private layoutTop:Landroid/widget/RelativeLayout;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private photoItemClickListener:Landroid/view/View$OnClickListener;

.field protected photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation
.end field

.field private select:Landroid/widget/Button;

.field private tvPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;-><init>(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 160
    new-instance v0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;-><init>(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->photoItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->photoItemClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->layoutTop:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method protected bindData()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->current:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselectorforts/R$id;->btn_back_root:I

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->finish()V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselectorforts/R$id;->bt_select:I

    if-ne p1, v0, :cond_1

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v1, "position"

    iget v2, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->current:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p0, v0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->requestWindowFeature(I)Z

    .line 43
    sget p1, Lcom/photoselectorforts/R$layout;->ops_a_activity_ts_mixedpreview:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->setContentView(I)V

    .line 44
    sget p1, Lcom/photoselectorforts/R$id;->layout_top_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->layoutTop:Landroid/widget/RelativeLayout;

    .line 45
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->btnBack:Landroid/widget/ImageView;

    .line 46
    sget p1, Lcom/photoselectorforts/R$id;->btn_back_root:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p1, Lcom/photoselectorforts/R$id;->bt_select:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->select:Landroid/widget/Button;

    .line 49
    const-string v0, "ops_a_ok"

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget p1, Lcom/photoselectorforts/R$id;->tv_percent_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/photoselectorforts/R$id;->vp_base_app:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 53
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->select:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 56
    sget p1, Lcom/photoselectorforts/R$anim;->ops_a_activity_alpha_action_in:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->current:I

    .line 150
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->updatePercent()V

    return-void
.end method

.method protected updatePercent()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->tvPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->current:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
