.class public Lcom/savedplots/PlotMarkerView;
.super Landroid/view/View;
.source "PlotMarkerView.java"


# instance fields
.field private badgePaint:Landroid/graphics/Paint;

.field private density:F

.field private diamondPaint:Landroid/graphics/Paint;

.field private diamondStrokePaint:Landroid/graphics/Paint;

.field private markersVisible:Z

.field private plots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/savedplots/SavedPlot;",
            ">;"
        }
    .end annotation
.end field

.field private showTempMarker:Z

.field private tempMarkerPaint:Landroid/graphics/Paint;

.field private tempMarkerX:F

.field private tempMarkerY:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->plots:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->markersVisible:Z

    .line 22
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerX:F

    .line 23
    iput v1, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerY:F

    .line 24
    iput-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->showTempMarker:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/savedplots/PlotMarkerView;->density:F

    .line 36
    invoke-direct {p0}, Lcom/savedplots/PlotMarkerView;->initPaints()V

    .line 37
    invoke-virtual {p0, v0}, Lcom/savedplots/PlotMarkerView;->setClickable(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/savedplots/PlotMarkerView;->setFocusable(Z)V

    .line 39
    return-void
.end method

.method private drawPlotMarker(Landroid/graphics/Canvas;FFLjava/lang/String;Z)V
    .locals 8

    .line 118
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v1, v1, v0

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 122
    sub-float v2, p3, v1

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    add-float v3, p2, v1

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    add-float v3, p3, v1

    invoke-virtual {v0, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    sub-float v1, p2, v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 128
    if-eqz p5, :cond_0

    .line 129
    iget-object v1, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/savedplots/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/savedplots/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 137
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v4, v4, v3

    invoke-virtual {p1, p2, p3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "Plot"

    .line 142
    :goto_1
    iget-object p3, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 143
    const/high16 v0, 0x41000000    # 8.0f

    iget v3, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v3, v3, v0

    .line 144
    iget v0, p0, Lcom/savedplots/PlotMarkerView;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v0, v0, v4

    .line 145
    iget-object v5, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v0, v6

    add-float/2addr v5, v7

    .line 146
    mul-float v3, v3, v6

    add-float/2addr p3, v3

    .line 148
    div-float v3, p3, v6

    sub-float v3, p2, v3

    .line 149
    iget v6, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v6, v6, v4

    sub-float/2addr v2, v6

    .line 150
    sub-float v5, v2, v5

    .line 151
    add-float/2addr p3, v3

    .line 153
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v5, p3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    iget p3, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float p3, p3, v4

    iget v2, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v2, v2, v4

    iget-object v3, p0, Lcom/savedplots/PlotMarkerView;->badgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, p3, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 158
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    const v1, 0x3f99999a    # 1.2f

    iget v2, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v2, v2, v1

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    if-eqz p5, :cond_2

    const-string p5, "#00E5FF"

    goto :goto_2

    :cond_2
    const-string p5, "#D4AF37"

    :goto_2
    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget p5, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float p5, p5, v4

    iget v1, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v1, v1, v4

    invoke-virtual {p1, v6, p5, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    add-float/2addr v5, v0

    iget-object p3, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    const p5, 0x3f59999a    # 0.85f

    mul-float p3, p3, p5

    add-float/2addr v5, p3

    .line 165
    iget-object p3, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, v5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    return-void
.end method

.method private initPaints()V
    .locals 6

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    const-string v2, "#FFD700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    const-string v2, "#803300"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/savedplots/PlotMarkerView;->density:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->badgePaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->badgePaint:Landroid/graphics/Paint;

    const/16 v2, 0x19

    const/16 v3, 0x23

    const/16 v4, 0xc8

    const/16 v5, 0x14

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->badgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerPaint:Landroid/graphics/Paint;

    const-string v1, "#00E5FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clearTempMarker()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->showTempMarker:Z

    .line 89
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerX:F

    .line 90
    iput v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerY:F

    .line 91
    invoke-virtual {p0}, Lcom/savedplots/PlotMarkerView;->invalidate()V

    .line 92
    return-void
.end method

.method public isMarkersVisible()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->markersVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->markersVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->plots:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/savedplots/PlotMarkerView;->plots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/savedplots/SavedPlot;

    .line 107
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getScreenX()F

    move-result v4

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getScreenY()F

    move-result v5

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/savedplots/PlotMarkerView;->drawPlotMarker(Landroid/graphics/Canvas;FFLjava/lang/String;Z)V

    .line 108
    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/savedplots/PlotMarkerView;->showTempMarker:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 113
    iget v3, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerX:F

    iget v4, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerY:F

    const-string v5, "Selected"

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/savedplots/PlotMarkerView;->drawPlotMarker(Landroid/graphics/Canvas;FFLjava/lang/String;Z)V

    .line 115
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 97
    const/4 p1, 0x0

    return p1
.end method

.method public setMarkersVisible(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/savedplots/PlotMarkerView;->markersVisible:Z

    .line 73
    invoke-virtual {p0}, Lcom/savedplots/PlotMarkerView;->invalidate()V

    .line 74
    return-void
.end method

.method public setPlots(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/savedplots/SavedPlot;",
            ">;)V"
        }
    .end annotation

    .line 67
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/savedplots/PlotMarkerView;->plots:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/savedplots/PlotMarkerView;->invalidate()V

    .line 69
    return-void
.end method

.method public setTempMarker(FF)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerX:F

    .line 82
    iput p2, p0, Lcom/savedplots/PlotMarkerView;->tempMarkerY:F

    .line 83
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/savedplots/PlotMarkerView;->showTempMarker:Z

    .line 84
    invoke-virtual {p0}, Lcom/savedplots/PlotMarkerView;->invalidate()V

    .line 85
    return-void
.end method
