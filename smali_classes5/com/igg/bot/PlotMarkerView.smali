.class public Lcom/igg/bot/PlotMarkerView;
.super Landroid/view/View;
.source "PlotMarkerView.java"


# instance fields
.field private final diamondPaint:Landroid/graphics/Paint;

.field private final diamondStrokePaint:Landroid/graphics/Paint;

.field private final plots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igg/bot/SavedPlot;",
            ">;"
        }
    .end annotation
.end field

.field private final textBgPaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;

.field private visibleMarkers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/igg/bot/PlotMarkerView;->plots:Ljava/util/List;

    .line 24
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igg/bot/PlotMarkerView;->visibleMarkers:Z

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igg/bot/PlotMarkerView;->setWillNotDraw(Z)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    const v1, -0x77002900

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    const/16 v1, -0x2900

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 43
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igg/bot/PlotMarkerView;->textBgPaint:Landroid/graphics/Paint;

    .line 46
    iget-object p1, p0, Lcom/igg/bot/PlotMarkerView;->textBgPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object p1, p0, Lcom/igg/bot/PlotMarkerView;->textBgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-boolean v1, v0, Lcom/igg/bot/PlotMarkerView;->visibleMarkers:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/igg/bot/PlotMarkerView;->plots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    nop

    .line 71
    nop

    .line 73
    iget-object v1, v0, Lcom/igg/bot/PlotMarkerView;->plots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igg/bot/SavedPlot;

    .line 74
    iget v11, v1, Lcom/igg/bot/SavedPlot;->screenX:F

    .line 75
    iget v2, v1, Lcom/igg/bot/SavedPlot;->screenY:F

    .line 78
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 79
    const/high16 v4, 0x41a00000    # 20.0f

    sub-float v5, v2, v4

    invoke-virtual {v3, v11, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    const/high16 v6, 0x42100000    # 36.0f

    add-float v7, v11, v6

    invoke-virtual {v3, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    add-float/2addr v4, v2

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    sub-float v4, v11, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 85
    iget-object v4, v0, Lcom/igg/bot/PlotMarkerView;->diamondPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 86
    iget-object v4, v0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, v0, Lcom/igg/bot/PlotMarkerView;->diamondStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udccd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 94
    iget-object v2, v0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v12, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 96
    const/high16 v2, 0x41600000    # 14.0f

    sub-float v13, v5, v2

    .line 97
    nop

    .line 98
    nop

    .line 100
    nop

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v3, v14

    sub-float v3, v11, v3

    sub-float/2addr v3, v2

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    const/high16 v5, 0x41000000    # 8.0f

    sub-float/2addr v4, v5

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    add-float/2addr v1, v11

    add-float v6, v1, v2

    add-float/2addr v5, v13

    iget-object v8, v0, Lcom/igg/bot/PlotMarkerView;->textBgPaint:Landroid/graphics/Paint;

    .line 100
    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v15, 0x41000000    # 8.0f

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 109
    sub-float/2addr v13, v14

    iget-object v1, v0, Lcom/igg/bot/PlotMarkerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12, v11, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    goto/16 :goto_0

    .line 111
    :cond_1
    return-void

    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public setMarkersVisible(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/igg/bot/PlotMarkerView;->visibleMarkers:Z

    .line 52
    invoke-virtual {p0}, Lcom/igg/bot/PlotMarkerView;->invalidate()V

    .line 53
    return-void
.end method

.method public updatePlots(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igg/bot/SavedPlot;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->plots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/igg/bot/PlotMarkerView;->plots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/igg/bot/PlotMarkerView;->invalidate()V

    .line 61
    return-void
.end method
