.class Lcom/gpc/polites/GestureImageViewTouchListener$3;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/gpc/polites/MoveAnimationListener;


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

.field final synthetic val$image:Lcom/gpc/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/gpc/polites/GestureImageViewTouchListener;Lcom/gpc/polites/GestureImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/gpc/polites/GestureImageViewTouchListener$3;->this$0:Lcom/gpc/polites/GestureImageViewTouchListener;

    iput-object p2, p0, Lcom/gpc/polites/GestureImageViewTouchListener$3;->val$image:Lcom/gpc/polites/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/gpc/polites/GestureImageViewTouchListener$3;->val$image:Lcom/gpc/polites/GestureImageView;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/polites/GestureImageView;->setPosition(FF)V

    .line 148
    iget-object p1, p0, Lcom/gpc/polites/GestureImageViewTouchListener$3;->val$image:Lcom/gpc/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->redraw()V

    return-void
.end method
