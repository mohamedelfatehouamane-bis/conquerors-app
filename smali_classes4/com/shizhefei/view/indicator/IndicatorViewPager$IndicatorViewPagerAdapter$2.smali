.class Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;
.super Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-direct {p0}, Lcom/shizhefei/view/viewpager/RecyclingPagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getPageRatio(I)F

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getViewForPage(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
