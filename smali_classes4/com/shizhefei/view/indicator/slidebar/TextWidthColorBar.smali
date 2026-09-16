.class public Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;
.super Lcom/shizhefei/view/indicator/slidebar/ColorBar;
.source "TextWidthColorBar.java"


# instance fields
.field private indicator:Lcom/shizhefei/view/indicator/Indicator;

.field private realWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shizhefei/view/indicator/Indicator;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p3, p4}, Lcom/shizhefei/view/indicator/slidebar/ColorBar;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->realWidth:I

    .line 38
    iput-object p2, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->indicator:Lcom/shizhefei/view/indicator/Indicator;

    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;)I
    .locals 4

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 76
    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method protected getTextView(I)Landroid/widget/TextView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->indicator:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->getItemView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getWidth(I)I
    .locals 0

    .line 50
    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->realWidth:I

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->indicator:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/Indicator;->getAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->indicator:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/Indicator;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextWidth(Landroid/widget/TextView;)I

    move-result p1

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->realWidth:I

    .line 58
    :cond_0
    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->realWidth:I

    return p1
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextWidth(Landroid/widget/TextView;)I

    move-result p3

    add-int/lit8 p1, p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->getTextWidth(Landroid/widget/TextView;)I

    move-result p1

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p3, p3, v0

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 45
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/TextWidthColorBar;->realWidth:I

    return-void
.end method
