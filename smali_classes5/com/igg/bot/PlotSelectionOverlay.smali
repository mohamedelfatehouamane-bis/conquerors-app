.class public Lcom/igg/bot/PlotSelectionOverlay;
.super Landroid/widget/FrameLayout;
.source "PlotSelectionOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/igg/bot/PlotSelectionOverlay;->listener:Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    .line 29
    invoke-direct {p0, p1}, Lcom/igg/bot/PlotSelectionOverlay;->initView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/igg/bot/PlotSelectionOverlay;->listener:Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    return-object p0
.end method

.method private dp(I)I
    .locals 2

    .line 95
    int-to-float p1, p1

    .line 98
    invoke-virtual {p0}, Lcom/igg/bot/PlotSelectionOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 9

    .line 34
    const/high16 v0, 0x33000000

    invoke-virtual {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->setBackgroundColor(I)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->setClickable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->setFocusable(Z)V

    .line 39
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    invoke-direct {p0, v3}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v7

    invoke-virtual {v1, v4, v6, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 44
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 45
    const v4, -0x19e1dbcd

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 46
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 47
    invoke-direct {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v0

    const v4, -0xc47d0a

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v3, "\ud83d\udccd Tap the plot you want to save"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    const/high16 v4, 0x41700000    # 15.0f

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    invoke-direct {v4, v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string p1, " Cancel "

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const p1, -0x9495

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    invoke-direct {p0, v5}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result p1

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v4

    invoke-virtual {v0, p1, v6, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    new-instance p1, Lcom/igg/bot/PlotSelectionOverlay$1;

    invoke-direct {p1, p0}, Lcom/igg/bot/PlotSelectionOverlay$1;-><init>(Lcom/igg/bot/PlotSelectionOverlay;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    const/16 v0, 0x30

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v3

    const/16 v4, 0x32

    invoke-direct {p0, v4}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/igg/bot/PlotSelectionOverlay;->dp(I)I

    move-result v0

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    invoke-virtual {p0, v1, p1}, Lcom/igg/bot/PlotSelectionOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 86
    iget-object v2, p0, Lcom/igg/bot/PlotSelectionOverlay;->listener:Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/igg/bot/PlotSelectionOverlay;->listener:Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    invoke-interface {v2, v0, p1}, Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;->onPlotSelected(FF)V

    .line 89
    :cond_0
    return v1

    .line 91
    :cond_1
    return v1
.end method
