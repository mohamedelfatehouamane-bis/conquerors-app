.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lme/dm7/barcodescanner/core/IViewFinder;


# static fields
.field public static final A:J = 0x14L

.field public static final r:Ljava/lang/String; = "ViewFinderView"

.field public static final s:F = 0.75f

.field public static final t:F = 0.75f

.field public static final u:F = 0.625f

.field public static final v:F = 1.4f

.field public static final w:I = 0x32

.field public static final x:F = 0.625f

.field public static final y:[I

.field public static final z:I = 0xa


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Paint;

.field public n:I

.field public o:Z

.field public p:I

.field public q:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->y:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$color;->viewfinder_laser:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$color;->viewfinder_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->e:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$color;->viewfinder_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->f:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$color;->viewfinder_tip_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->g:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$integer;->viewfinder_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/gpc/sdk/misc/R$integer;->viewfinder_border_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    .line 27
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$color;->viewfinder_laser:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$color;->viewfinder_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->e:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$color;->viewfinder_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->f:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$color;->viewfinder_tip_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->g:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$integer;->viewfinder_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/gpc/sdk/misc/R$integer;->viewfinder_border_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    .line 59
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    .line 11
    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:Landroid/graphics/Paint;

    .line 17
    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->g:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gpc/sdk/misc/R$dimen;->qrcode_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->o:Z

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gpc/sdk/misc/R$drawable;->gpc_a_core_scan_light:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 9
    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->q:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, p1, -0xa

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, p1, -0xa

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, p1, 0xa

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, p1, 0xa

    const-wide/16 v2, 0x14

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public drawTipText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/gpc/sdk/misc/R$string;->qrcode_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 5
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x46

    int-to-float v0, v0

    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v5, v3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    .line 3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, -0x1

    int-to-float v9, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v10, v1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    add-int/2addr p1, v1

    int-to-float v11, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, -0x1

    int-to-float v9, p1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v10, p1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    sub-int/2addr p1, v1

    int-to-float v12, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, -0x1

    int-to-float v9, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v10, v1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    add-int/2addr p1, v1

    int-to-float v11, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v9, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, -0x1

    int-to-float v10, p1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    add-int/2addr p1, v1

    int-to-float v12, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v9, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v10, v1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    sub-int/2addr p1, v1

    int-to-float v11, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v9, p1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v10, p1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    sub-int/2addr p1, v1

    int-to-float v12, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v9, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v10, v0

    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    sub-int/2addr p1, v0

    int-to-float v11, p1

    iget-object v13, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawViewFinderMask(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    int-to-float v7, v1

    .line 5
    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    iget-object v9, v0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v1

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v13, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v14, v1

    iget-object v15, v0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v1, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    iget-object v9, v0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v6, v1

    int-to-float v8, v2

    iget-object v9, v0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderMask(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderBorder(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawLaser(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawTipText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 3
    :cond_0
    const-string p1, "ViewFinderView"

    const-string v0, "borderColor is not valid"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:I

    return-void
.end method

.method public setBorderMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 3
    :cond_0
    const-string p1, "ViewFinderView"

    const-string v0, "maskColor is not valid"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->o:Z

    return-void
.end method

.method public setupViewFinder()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized updateFramingRect()V
    .locals 11

    const-string v0, "max:"

    const-string v1, "min:"

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v3

    .line 7
    iget-boolean v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->o:Z

    const/4 v5, 0x1

    const/high16 v6, 0x3f200000    # 0.625f

    const/high16 v7, 0x3f400000    # 0.75f

    if-eqz v4, :cond_5

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    sub-float/2addr v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ViewFinderView"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v4, v4, v9

    sub-float/2addr v0, v4

    div-float/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewFinderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v5, :cond_2

    .line 11
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v9

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const-string v0, "ViewFinderView"

    const-string v1, "mBorderMargin error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_3

    .line 25
    :cond_2
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    if-lez v0, :cond_4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v9

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    :goto_1
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_4

    .line 30
    :cond_4
    :goto_2
    const-string v0, "ViewFinderView"

    const-string v1, "mBorderMargin error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_3
    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    :goto_4
    move v1, v0

    goto :goto_5

    :cond_5
    if-eq v3, v5, :cond_6

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    int-to-float v1, v0

    const v3, 0x3fb33333    # 1.4f

    mul-float v1, v1, v3

    float-to-int v1, v1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_5

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v7

    float-to-int v0, v0

    int-to-float v1, v0

    mul-float v1, v1, v7

    float-to-int v1, v1

    .line 47
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    .line 51
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_8

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    .line 55
    :cond_8
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 56
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 57
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
