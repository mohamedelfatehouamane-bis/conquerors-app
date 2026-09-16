.class Lcom/gpc/polites/GestureImageView$1;
.super Ljava/lang/Object;
.source "GestureImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/polites/GestureImageView;->setupCanvas(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/gpc/polites/GestureImageView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/gpc/polites/GestureImageView$1;->this$0:Lcom/gpc/polites/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/gpc/polites/GestureImageView$1;->this$0:Lcom/gpc/polites/GestureImageView;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageView;->access$000(Lcom/gpc/polites/GestureImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/gpc/polites/GestureImageView$1;->this$0:Lcom/gpc/polites/GestureImageView;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageView;->access$000(Lcom/gpc/polites/GestureImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/gpc/polites/GestureImageView$1;->this$0:Lcom/gpc/polites/GestureImageView;

    invoke-static {v0}, Lcom/gpc/polites/GestureImageView;->access$100(Lcom/gpc/polites/GestureImageView;)Lcom/gpc/polites/GestureImageViewTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/polites/GestureImageViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
