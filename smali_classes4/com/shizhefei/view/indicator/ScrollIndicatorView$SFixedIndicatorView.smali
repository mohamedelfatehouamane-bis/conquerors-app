.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;
.super Lcom/shizhefei/view/indicator/FixedIndicatorView;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SFixedIndicatorView"
.end annotation


# instance fields
.field private isAutoSplit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private measureChildWidth(Landroid/view/View;II)I
    .locals 3

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 275
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 276
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public isSplitAuto()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMeasure start: layoutWidth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pppp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 245
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 251
    invoke-virtual {p0, v5}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->measureChildWidth(Landroid/view/View;II)I

    move-result v8

    if-ge v7, v8, :cond_0

    move v7, v8

    :cond_0
    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "onMeasure: layoutWidth"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " totalWidth:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " maxCellWidth * count:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v6, v2, :cond_2

    .line 258
    invoke-virtual {v0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    const/4 v0, 0x2

    .line 259
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-le v7, v2, :cond_3

    .line 261
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 265
    invoke-virtual {p0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    .line 269
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onMeasure(II)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eq v0, p1, :cond_1

    .line 231
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 233
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->requestLayout()V

    .line 236
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->invalidate()V

    :cond_1
    return-void
.end method
