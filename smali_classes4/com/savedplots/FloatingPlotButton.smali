.class public Lcom/savedplots/FloatingPlotButton;
.super Landroid/widget/FrameLayout;
.source "FloatingPlotButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/savedplots/FloatingPlotButton$OnClickListener;
    }
.end annotation


# static fields
.field private static final CLICK_DRAG_TOLERANCE:I = 0xa


# instance fields
.field private clickListener:Lcom/savedplots/FloatingPlotButton$OnClickListener;

.field private dX:F

.field private dY:F

.field private density:F

.field private downRawX:F

.field private downRawY:F

.field private isDragging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/savedplots/FloatingPlotButton$OnClickListener;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/savedplots/FloatingPlotButton;->isDragging:Z

    .line 30
    iput-object p2, p0, Lcom/savedplots/FloatingPlotButton;->clickListener:Lcom/savedplots/FloatingPlotButton$OnClickListener;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/savedplots/FloatingPlotButton;->density:F

    .line 32
    invoke-direct {p0}, Lcom/savedplots/FloatingPlotButton;->initView()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/savedplots/FloatingPlotButton;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/savedplots/FloatingPlotButton;->downRawX:F

    return p0
.end method

.method static synthetic access$002(Lcom/savedplots/FloatingPlotButton;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/savedplots/FloatingPlotButton;->downRawX:F

    return p1
.end method

.method static synthetic access$100(Lcom/savedplots/FloatingPlotButton;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/savedplots/FloatingPlotButton;->downRawY:F

    return p0
.end method

.method static synthetic access$102(Lcom/savedplots/FloatingPlotButton;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/savedplots/FloatingPlotButton;->downRawY:F

    return p1
.end method

.method static synthetic access$200(Lcom/savedplots/FloatingPlotButton;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/savedplots/FloatingPlotButton;->dX:F

    return p0
.end method

.method static synthetic access$202(Lcom/savedplots/FloatingPlotButton;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/savedplots/FloatingPlotButton;->dX:F

    return p1
.end method

.method static synthetic access$300(Lcom/savedplots/FloatingPlotButton;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/savedplots/FloatingPlotButton;->dY:F

    return p0
.end method

.method static synthetic access$302(Lcom/savedplots/FloatingPlotButton;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/savedplots/FloatingPlotButton;->dY:F

    return p1
.end method

.method static synthetic access$400(Lcom/savedplots/FloatingPlotButton;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/savedplots/FloatingPlotButton;->isDragging:Z

    return p0
.end method

.method static synthetic access$402(Lcom/savedplots/FloatingPlotButton;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/savedplots/FloatingPlotButton;->isDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/savedplots/FloatingPlotButton;)Lcom/savedplots/FloatingPlotButton$OnClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/savedplots/FloatingPlotButton;->clickListener:Lcom/savedplots/FloatingPlotButton$OnClickListener;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 36
    const/high16 v0, 0x42400000    # 48.0f

    iget v1, p0, Lcom/savedplots/FloatingPlotButton;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/savedplots/FloatingPlotButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 42
    const/16 v1, 0x1e

    const/16 v2, 0x2a

    const/16 v3, 0xeb

    const/16 v4, 0x19

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/savedplots/FloatingPlotButton;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    const-string v2, "#E5C068"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/savedplots/FloatingPlotButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/FloatingPlotButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v1, "\ud83d\udccd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/savedplots/FloatingPlotButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lcom/savedplots/FloatingPlotButton$1;

    invoke-direct {v0, p0}, Lcom/savedplots/FloatingPlotButton$1;-><init>(Lcom/savedplots/FloatingPlotButton;)V

    invoke-virtual {p0, v0}, Lcom/savedplots/FloatingPlotButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    return-void
.end method
