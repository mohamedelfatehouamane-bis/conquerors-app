.class public Lcom/shizhefei/view/indicator/IndicatorViewPager;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

.field private indicatorView:Lcom/shizhefei/view/indicator/Indicator;

.field private onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

.field private onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

.field private onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    .line 212
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 48
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    .line 49
    iput-object p2, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 50
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 51
    iget-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    iget-object p2, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    invoke-interface {p1, p2}, Lcom/shizhefei/view/indicator/Indicator;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/IndicatorViewPager;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shizhefei/view/indicator/IndicatorViewPager;)Lcom/shizhefei/view/indicator/Indicator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/IndicatorViewPager;)Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorView()Lcom/shizhefei/view/indicator/Indicator;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    return-object v0
.end method

.method public getOnIndicatorPageChangeListener()Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/Indicator;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    .line 61
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 75
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1, p2}, Lcom/shizhefei/view/indicator/Indicator;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIndicatorOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V

    return-void
.end method

.method public setIndicatorScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setOnIndicatorPageChangeListener(Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(I)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageOffscreenLimit(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
