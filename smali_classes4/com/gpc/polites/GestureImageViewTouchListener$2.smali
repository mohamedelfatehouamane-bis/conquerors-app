.class Lcom/gpc/polites/GestureImageViewTouchListener$2;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/gpc/polites/ZoomAnimationListener;


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

    .line 128
    iput-object p1, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpc/polites/GestureImageViewTouchListener;->access$302(Lcom/gpc/polites/GestureImageViewTouchListener;Z)Z

    .line 139
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-virtual {v0}, Lcom/gpc/polites/GestureImageViewTouchListener;->handleUp()V

    return-void
.end method

.method public onZoom(FFF)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageViewTouchListener;->access$100(Lcom/gpc/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageViewTouchListener;->access$200(Lcom/gpc/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$2;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/polites/GestureImageViewTouchListener;->handleScale(FFF)V

    :cond_0
    return-void
.end method
