.class Lcom/polites/GestureImageViewTouchListener$2;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/polites/ZoomAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polites/GestureImageViewTouchListener;-><init>(Lcom/polites/GestureImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polites/GestureImageViewTouchListener;


# direct methods
.method constructor <init>(Lcom/polites/GestureImageViewTouchListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/polites/GestureImageViewTouchListener;->access$302(Lcom/polites/GestureImageViewTouchListener;Z)Z

    .line 138
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-virtual {v0}, Lcom/polites/GestureImageViewTouchListener;->handleUp()V

    return-void
.end method

.method public onZoom(FFF)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {v0}, Lcom/polites/GestureImageViewTouchListener;->access$100(Lcom/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {v0}, Lcom/polites/GestureImageViewTouchListener;->access$200(Lcom/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$2;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polites/GestureImageViewTouchListener;->handleScale(FFF)V

    :cond_0
    return-void
.end method
