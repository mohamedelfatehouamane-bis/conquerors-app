.class public abstract Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;
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
    name = "IndicatorViewPagerAdapter"
.end annotation


# instance fields
.field private indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private pagerAdapter:Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 264
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

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

    .line 309
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;

    return-object v0
.end method

.method public abstract getViewForPage(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    .line 304
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
