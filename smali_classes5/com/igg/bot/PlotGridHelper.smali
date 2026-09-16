.class public Lcom/igg/bot/PlotGridHelper;
.super Ljava/lang/Object;
.source "PlotGridHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/bot/PlotGridHelper$GridCoord;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateGrid(FFII)Lcom/igg/bot/PlotGridHelper$GridCoord;
    .locals 1

    .line 23
    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 29
    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 34
    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    add-float p3, p0, p1

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float p3, p3, v0

    .line 35
    sub-float/2addr p1, p0

    add-float/2addr p1, p2

    mul-float p1, p1, v0

    .line 37
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p2, 0x1d

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p3, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 40
    new-instance p2, Lcom/igg/bot/PlotGridHelper$GridCoord;

    invoke-direct {p2, p0, p1}, Lcom/igg/bot/PlotGridHelper$GridCoord;-><init>(II)V

    return-object p2

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
