.class public Lcom/shizhefei/view/utils/ColorGradient;
.super Ljava/lang/Object;
.source "ColorGradient.java"


# instance fields
.field private color1:I

.field private color1Values:[I

.field private color2:I

.field private color2Values:[I

.field private count:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/shizhefei/view/utils/ColorGradient;->color1:I

    .line 27
    iput p2, p0, Lcom/shizhefei/view/utils/ColorGradient;->color2:I

    .line 28
    iput p3, p0, Lcom/shizhefei/view/utils/ColorGradient;->count:I

    .line 29
    invoke-direct {p0, p1}, Lcom/shizhefei/view/utils/ColorGradient;->toColorValue(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/utils/ColorGradient;->color1Values:[I

    .line 30
    invoke-direct {p0, p2}, Lcom/shizhefei/view/utils/ColorGradient;->toColorValue(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/utils/ColorGradient;->color2Values:[I

    return-void
.end method

.method private toColorValue(I)[I
    .locals 3

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    filled-new-array {v0, v1, v2, p1}, [I

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getColor(I)I
    .locals 9

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/shizhefei/view/utils/ColorGradient;->color2Values:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/shizhefei/view/utils/ColorGradient;->color1Values:[I

    aget v4, v4, v2

    int-to-double v5, v4

    aget v3, v3, v2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v7

    iget v7, p0, Lcom/shizhefei/view/utils/ColorGradient;->count:I

    int-to-double v7, v7

    div-double/2addr v3, v7

    int-to-double v7, p1

    mul-double v3, v3, v7

    add-double/2addr v5, v3

    double-to-int v3, v5

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    aget p1, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public getColor1()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/shizhefei/view/utils/ColorGradient;->color1:I

    return v0
.end method

.method public getColor2()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/shizhefei/view/utils/ColorGradient;->color2:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/shizhefei/view/utils/ColorGradient;->count:I

    return v0
.end method
