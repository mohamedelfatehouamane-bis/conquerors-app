.class public Lcom/afollestad/materialdialogs/color/CircleView;
.super Landroid/widget/FrameLayout;
.source "CircleView.java"


# instance fields
.field private final borderWidthLarge:I

.field private final borderWidthSmall:I

.field private final innerPaint:Landroid/graphics/Paint;

.field private final outerPaint:Landroid/graphics/Paint;

.field private selected:Z

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/afollestad/materialdialogs/color/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/color/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    .line 50
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/afollestad/materialdialogs/color/CircleView;->borderWidthSmall:I

    const/high16 p2, 0x40a00000    # 5.0f

    .line 52
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->borderWidthLarge:I

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->whitePaint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, -0x1

    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->innerPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->outerPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, -0xbbbbbc

    .line 62
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->update(I)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setWillNotDraw(Z)V

    return-void
.end method

.method private createSelector(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 175
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/CircleView;->shiftColorUp(I)I

    move-result p1

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/CircleView;->translucentColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    .line 178
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public static shiftColor(IF)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [F

    .line 82
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 83
    aget v1, v0, p0

    mul-float v1, v1, p1

    aput v1, v0, p0

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static shiftColorDown(I)I
    .locals 1

    const v0, 0x3f666666    # 0.9f

    .line 89
    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/color/CircleView;->shiftColor(IF)I

    move-result p0

    return p0
.end method

.method public static shiftColorUp(I)I
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    .line 94
    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/color/CircleView;->shiftColor(IF)I

    move-result p0

    return p0
.end method

.method private static translucentColor(I)I
    .locals 3

    .line 69
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 70
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 71
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 72
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 73
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private update(I)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/CircleView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/CircleView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/CircleView;->shiftColorDown(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->createSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    new-array v1, v1, [[I

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 104
    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/CircleView;->shiftColorUp(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 105
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 106
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 163
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->selected:Z

    if-eqz v1, :cond_0

    .line 164
    iget v1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->borderWidthLarge:I

    sub-int v1, v0, v1

    .line 165
    iget v2, p0, Lcom/afollestad/materialdialogs/color/CircleView;->borderWidthSmall:I

    sub-int v2, v1, v2

    .line 166
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/color/CircleView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcom/afollestad/materialdialogs/color/CircleView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/afollestad/materialdialogs/color/CircleView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/afollestad/materialdialogs/color/CircleView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 156
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/color/CircleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setActivated() on CircleView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setBackground() on CircleView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->update(I)V

    .line 115
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->invalidate()V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setBackgroundDrawable() on CircleView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setBackgroundColor(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/CircleView;->selected:Z

    .line 149
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->requestLayout()V

    .line 150
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->invalidate()V

    return-void
.end method

.method public showHint(I)V
    .locals 10

    const/4 v0, 0x2

    .line 183
    new-array v1, v0, [I

    .line 184
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 185
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/color/CircleView;->getLocationOnScreen([I)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/color/CircleView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 188
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getWidth()I

    move-result v4

    .line 189
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/CircleView;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    .line 190
    aget v7, v1, v6

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 191
    aget v9, v1, v8

    div-int/2addr v4, v0

    add-int/2addr v9, v4

    .line 192
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v9, v0, v9

    :cond_0
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v8

    const-string p1, "#%06X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 200
    aget v0, v1, v6

    add-int/2addr v0, v5

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    const v1, 0x800035

    invoke-virtual {p1, v1, v9, v0}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    .line 204
    invoke-virtual {p1, v0, v8, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 206
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
