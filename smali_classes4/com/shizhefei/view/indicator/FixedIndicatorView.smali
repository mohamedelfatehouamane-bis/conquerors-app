.class public Lcom/shizhefei/view/indicator/FixedIndicatorView;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;
    }
.end annotation


# static fields
.field public static final SPLITMETHOD_EQUALS:I = 0x0

.field public static final SPLITMETHOD_WEIGHT:I = 0x1

.field public static final SPLITMETHOD_WRAP:I = 0x2


# instance fields
.field private dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

.field private inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

.field private mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private mPosition:I

.field private mPositionOffset:F

.field private mPositionOffsetPixels:I

.field private mPreSelectedTabIndex:I

.field private mSelectedTabIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

.field private onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

.field private positionOffset:F

.field private prePositions:[I

.field private scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

.field private splitMethod:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 85
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 154
    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 199
    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 387
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 36
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 85
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 152
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 154
    new-instance p2, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 199
    new-instance p2, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {p2, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 387
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 47
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 85
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 152
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 154
    new-instance p2, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 199
    new-instance p2, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {p2, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 387
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 42
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    return-object p0
.end method

.method static synthetic access$102(Lcom/shizhefei/view/indicator/FixedIndicatorView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->positionOffset:F

    return p1
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$502(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method

.method static synthetic access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object p0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 9

    .line 317
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 320
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 326
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 327
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 332
    :cond_2
    sget-object v1, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 348
    :goto_0
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 349
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->getCurrentX()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_6

    .line 352
    invoke-virtual {p0, v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 353
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v5

    if-gtz v8, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    .line 358
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 359
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v5, v8

    float-to-int v8, v8

    .line 360
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v5, v6

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 361
    invoke-direct {p0, v7, v6, v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    goto :goto_3

    .line 362
    :cond_7
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    .line 363
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    mul-float v5, v5, v6

    add-float/2addr v5, v0

    .line 366
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    iget v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    invoke-direct {p0, v0, v6, v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    goto :goto_3

    .line 368
    :cond_8
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 372
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v5, v0

    .line 374
    :goto_3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    .line 377
    :cond_a
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    iget v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    invoke-direct {p0, v0, v6, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    .line 378
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 379
    div-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v5, v0

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    int-to-float v1, v1

    .line 381
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 383
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method private init()V
    .locals 1

    .line 51
    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    return-void
.end method

.method private initNotifyOnPageScrollListener()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    .line 131
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    if-ltz v0, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 137
    :cond_0
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-ltz v0, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v0, v2, v3}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_1
    return-void
.end method

.method private measureScrollBar(IFZ)I
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 422
    :cond_0
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    .line 424
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 425
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 427
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_0
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 428
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result p2

    .line 429
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p3

    .line 430
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 431
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureTabs()V
    .locals 6

    .line 440
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    .line 444
    iget v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 456
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 459
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 460
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 465
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 467
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 468
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 469
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 447
    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 448
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 449
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 450
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 451
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private notifyPageScrolled(IFI)V
    .locals 8

    if-ltz p1, :cond_4

    .line 391
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->positionOffset:F

    .line 395
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    .line 396
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 398
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-eqz p3, :cond_4

    .line 399
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p3, v3

    if-eq v4, p1, :cond_2

    add-int/lit8 v5, p1, 0x1

    if-eq v4, v5, :cond_2

    .line 401
    invoke-virtual {p0, v4}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 403
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v7}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 408
    aput v0, p3, v1

    .line 409
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    .line 410
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 413
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    invoke-interface {p3, p1, v0, p2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v2, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v2, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v2

    sget-object v3, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v2, v3, :cond_1

    .line 309
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    :cond_2
    return-void
.end method

.method public getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 479
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return v0
.end method

.method public getSplitMethod()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    .line 484
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 498
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    .line 499
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    .line 500
    iput p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    .line 501
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 502
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 504
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 489
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 490
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 66
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    .line 67
    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 98
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-eq v0, p1, :cond_8

    .line 99
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 100
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    .line 101
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 103
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, p1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 106
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    .line 112
    :cond_5
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->positionOffset:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_6

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    if-nez p2, :cond_7

    :cond_6
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    .line 114
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->initNotifyOnPageScrollListener()V

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 117
    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-virtual {p0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 118
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    .line 119
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    .line 121
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 122
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v1, p2, v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->startScroll(III)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    .line 513
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->initNotifyOnPageScrollListener()V

    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 6

    .line 216
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingBottom()I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingTop()I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 219
    sget-object v2, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 231
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    .line 232
    sget-object v2, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 243
    :goto_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 192
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method
