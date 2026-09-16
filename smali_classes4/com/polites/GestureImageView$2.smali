.class Lcom/polites/GestureImageView$2;
.super Ljava/lang/Object;
.source "GestureImageView.java"

# interfaces
.implements Lcom/polites/GestureImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polites/GestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/polites/GestureImageView;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/polites/GestureImageView$2;->this$0:Lcom/polites/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPosition(FF)V
    .locals 6

    .line 747
    iget-object p2, p0, Lcom/polites/GestureImageView$2;->this$0:Lcom/polites/GestureImageView;

    invoke-virtual {p2}, Lcom/polites/GestureImageView;->getScaledWidth()I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 748
    iget-object p2, p0, Lcom/polites/GestureImageView$2;->this$0:Lcom/polites/GestureImageView;

    invoke-virtual {p2}, Lcom/polites/GestureImageView;->getWidth()I

    move-result p2

    int-to-double v2, p2

    .line 749
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(F)V

    .line 750
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    float-to-double p1, p1

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_1

    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/polites/GestureImageView$2;->this$0:Lcom/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    .line 752
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/polites/GestureImageView$2;->this$0:Lcom/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onScale(F)V
    .locals 0

    return-void
.end method

.method public onTouch(FF)V
    .locals 0

    return-void
.end method
