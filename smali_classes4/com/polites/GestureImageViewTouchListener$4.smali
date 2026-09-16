.class Lcom/polites/GestureImageViewTouchListener$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureImageViewTouchListener.java"


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

.field final synthetic val$image:Lcom/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/polites/GestureImageViewTouchListener;Lcom/polites/GestureImageView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener$4;->this$0:Lcom/polites/GestureImageViewTouchListener;

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener$4;->val$image:Lcom/polites/GestureImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$4;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {v0, p1}, Lcom/polites/GestureImageViewTouchListener;->access$400(Lcom/polites/GestureImageViewTouchListener;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener$4;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {p1}, Lcom/polites/GestureImageViewTouchListener;->access$300(Lcom/polites/GestureImageViewTouchListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener$4;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {p1}, Lcom/polites/GestureImageViewTouchListener;->access$500(Lcom/polites/GestureImageViewTouchListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener$4;->this$0:Lcom/polites/GestureImageViewTouchListener;

    invoke-static {p1}, Lcom/polites/GestureImageViewTouchListener;->access$500(Lcom/polites/GestureImageViewTouchListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$4;->val$image:Lcom/polites/GestureImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
