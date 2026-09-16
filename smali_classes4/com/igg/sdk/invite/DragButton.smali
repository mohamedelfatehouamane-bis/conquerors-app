.class Lcom/igg/sdk/invite/DragButton;
.super Landroid/widget/Button;
.source "DragButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/sdk/invite/DragButton$Point;
    }
.end annotation


# static fields
.field static final REST:I = 0x64


# instance fields
.field downTime:J

.field isMove:Z

.field winHeight:I

.field winWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/igg/sdk/invite/DragButton;->isMove:Z

    .line 18
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/igg/sdk/invite/DragButton;->winWidth:I

    .line 19
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/igg/sdk/invite/DragButton;->winHeight:I

    return-void
.end method

.method private checkPoint(FF)Lcom/igg/sdk/invite/DragButton$Point;
    .locals 9

    .line 111
    iget v0, p0, Lcom/igg/sdk/invite/DragButton;->winWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 112
    iget v1, p0, Lcom/igg/sdk/invite/DragButton;->winHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, v1, v0

    if-gtz v5, :cond_0

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    cmpl-float v6, v1, v0

    if-ltz v6, :cond_1

    cmpl-float v6, v0, v4

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    cmpg-float v8, v7, v0

    if-gtz v8, :cond_2

    cmpl-float v8, v1, v4

    if-ltz v8, :cond_2

    cmpg-float v8, v0, v4

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    cmpl-float v7, v7, v0

    if-ltz v7, :cond_3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_3

    cmpg-float v0, v1, v4

    if-gtz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v8, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    .line 120
    :cond_4
    new-instance p1, Lcom/igg/sdk/invite/DragButton$Point;

    invoke-direct {p0}, Lcom/igg/sdk/invite/DragButton;->moveToYAxis()I

    move-result v0

    float-to-int p2, p2

    invoke-direct {p0, p2}, Lcom/igg/sdk/invite/DragButton;->checkY(I)I

    move-result p2

    invoke-direct {p1, p0, v0, p2}, Lcom/igg/sdk/invite/DragButton$Point;-><init>(Lcom/igg/sdk/invite/DragButton;II)V

    return-object p1

    .line 118
    :cond_5
    :goto_4
    new-instance p2, Lcom/igg/sdk/invite/DragButton$Point;

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/igg/sdk/invite/DragButton;->checkX(I)I

    move-result p1

    invoke-direct {p0}, Lcom/igg/sdk/invite/DragButton;->moveToXAxis()I

    move-result v0

    invoke-direct {p2, p0, p1, v0}, Lcom/igg/sdk/invite/DragButton$Point;-><init>(Lcom/igg/sdk/invite/DragButton;II)V

    return-object p2
.end method

.method private checkX(I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    iget v0, p0, Lcom/igg/sdk/invite/DragButton;->winWidth:I

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 72
    iget p1, p0, Lcom/igg/sdk/invite/DragButton;->winWidth:I

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method private checkY(I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x5

    return p1

    .line 103
    :cond_0
    iget v0, p0, Lcom/igg/sdk/invite/DragButton;->winHeight:I

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 104
    iget p1, p0, Lcom/igg/sdk/invite/DragButton;->winHeight:I

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method private moveToXAxis()I
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getTop()I

    move-result v0

    iget v1, p0, Lcom/igg/sdk/invite/DragButton;->winHeight:I

    div-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private moveToYAxis()I
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/igg/sdk/invite/DragButton;->winWidth:I

    div-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setPosition(II)V
    .locals 1

    .line 65
    new-instance v0, Lcom/igg/sdk/invite/DragButton$Point;

    invoke-direct {v0, p0, p1, p2}, Lcom/igg/sdk/invite/DragButton$Point;-><init>(Lcom/igg/sdk/invite/DragButton;II)V

    invoke-direct {p0, v0}, Lcom/igg/sdk/invite/DragButton;->setPosition(Lcom/igg/sdk/invite/DragButton$Point;)V

    return-void
.end method

.method private setPosition(Lcom/igg/sdk/invite/DragButton$Point;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p1, Lcom/igg/sdk/invite/DragButton$Point;->x:I

    iget p1, p1, Lcom/igg/sdk/invite/DragButton$Point;->y:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/igg/sdk/invite/DragButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_0

    goto :goto_3

    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 33
    iget-wide v9, p0, Lcom/igg/sdk/invite/DragButton;->downTime:J

    sub-long/2addr v7, v9

    cmp-long p1, v7, v4

    if-gez p1, :cond_1

    return v3

    .line 36
    :cond_1
    iput-boolean v3, p0, Lcom/igg/sdk/invite/DragButton;->isMove:Z

    .line 37
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getLeft()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getWidth()I

    move-result v0

    div-int/2addr v0, v6

    sub-int/2addr p1, v0

    .line 38
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/igg/sdk/invite/DragButton;->setPosition(II)V

    goto :goto_3

    .line 43
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 44
    iget-boolean p1, p0, Lcom/igg/sdk/invite/DragButton;->isMove:Z

    if-eqz p1, :cond_6

    iget-wide v9, p0, Lcom/igg/sdk/invite/DragButton;->downTime:J

    sub-long/2addr v7, v9

    cmp-long p1, v7, v4

    if-gez p1, :cond_3

    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getLeft()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getWidth()I

    move-result v0

    div-int/2addr v0, v6

    sub-int/2addr p1, v0

    .line 49
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    int-to-float p1, p1

    :goto_0
    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    int-to-float v1, v0

    .line 50
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/igg/sdk/invite/DragButton;->checkPoint(FF)Lcom/igg/sdk/invite/DragButton$Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/igg/sdk/invite/DragButton;->setPosition(Lcom/igg/sdk/invite/DragButton$Point;)V

    goto :goto_3

    .line 45
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/igg/sdk/invite/DragButton;->performClick()Z

    return v2

    .line 28
    :cond_7
    iput-boolean v2, p0, Lcom/igg/sdk/invite/DragButton;->isMove:Z

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igg/sdk/invite/DragButton;->downTime:J

    :goto_3
    return v3
.end method
