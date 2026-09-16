.class Lcom/polites/GestureImageViewTouchListener$3;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/polites/MoveAnimationListener;


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

    .line 142
    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener$3;->this$0:Lcom/polites/GestureImageViewTouchListener;

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener$3;->val$image:Lcom/polites/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener$3;->val$image:Lcom/polites/GestureImageView;

    invoke-virtual {v0, p1, p2}, Lcom/polites/GestureImageView;->setPosition(FF)V

    .line 147
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener$3;->val$image:Lcom/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->redraw()V

    return-void
.end method
