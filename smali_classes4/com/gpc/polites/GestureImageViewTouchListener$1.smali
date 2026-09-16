.class Lcom/gpc/polites/GestureImageViewTouchListener$1;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/gpc/polites/FlingAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/polites/GestureImageViewTouchListener;-><init>(Lcom/gpc/polites/GestureImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/polites/GestureImageViewTouchListener;


# direct methods
.method constructor <init>(Lcom/gpc/polites/GestureImageViewTouchListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/gpc/polites/GestureImageViewTouchListener$1;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onMove(FF)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$1;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageViewTouchListener;->access$000(Lcom/gpc/polites/GestureImageViewTouchListener;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/gpc/polites/GestureImageViewTouchListener$1;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-static {p1}, Lcom/gpc/polites/GestureImageViewTouchListener;->access$000(Lcom/gpc/polites/GestureImageViewTouchListener;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lcom/gpc/polites/GestureImageViewTouchListener;->handleDrag(FF)Z

    return-void
.end method
