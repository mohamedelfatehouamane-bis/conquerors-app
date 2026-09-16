.class public abstract Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndicatorFragmentPagerAdapter"
.end annotation


# instance fields
.field private indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 330
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getExitFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->getExitFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public abstract getFragmentForPage(I)Landroidx/fragment/app/Fragment;
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPageRatio(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    return-object v0
.end method

.method public abstract getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    .line 405
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->notifyDataSetChanged()V

    return-void
.end method
