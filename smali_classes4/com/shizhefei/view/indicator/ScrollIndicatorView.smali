.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;
    }
.end annotation


# instance fields
.field private dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

.field private fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private positionOffset:F

.field private unScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    const/4 p2, -0x1

    .line 162
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->unScrollPosition:I

    .line 24
    new-instance v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-direct {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    .line 25
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/shizhefei/view/indicator/ScrollIndicatorView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->positionOffset:F

    return p1
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    return-object p0
.end method

.method private animateToTab(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    :cond_1
    new-instance v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$2;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public isSplitAuto()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->isSplitAuto()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 99
    iget p2, p1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->unScrollPosition:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 100
    iget-object p4, p1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p4, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p0, p4, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->smoothScrollTo(II)V

    .line 105
    iput p3, p1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->unScrollPosition:I

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 193
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->positionOffset:F

    .line 194
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float v1, v1, p2

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->scrollTo(II)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 91
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->animateToTab(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->unScrollPosition:I

    .line 146
    iget v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->positionOffset:F

    const v2, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_3

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    :cond_3
    if-eqz p2, :cond_4

    .line 148
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->animateToTab(I)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ltz v2, :cond_5

    .line 153
    invoke-virtual {p0, v2, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->scrollTo(II)V

    goto :goto_1

    .line 155
    :cond_5
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->unScrollPosition:I

    .line 159
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V

    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    .line 31
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 32
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitAuto(Z)V

    return-void
.end method
