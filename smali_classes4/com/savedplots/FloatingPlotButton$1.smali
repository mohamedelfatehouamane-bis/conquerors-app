.class Lcom/savedplots/FloatingPlotButton$1;
.super Ljava/lang/Object;
.source "FloatingPlotButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/FloatingPlotButton;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/FloatingPlotButton;


# direct methods
.method constructor <init>(Lcom/savedplots/FloatingPlotButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 88
    return v1

    .line 71
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v1}, Lcom/savedplots/FloatingPlotButton;->access$000(Lcom/savedplots/FloatingPlotButton;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v3}, Lcom/savedplots/FloatingPlotButton;->access$100(Lcom/savedplots/FloatingPlotButton;)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 73
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v0, v2}, Lcom/savedplots/FloatingPlotButton;->access$402(Lcom/savedplots/FloatingPlotButton;Z)Z

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v1}, Lcom/savedplots/FloatingPlotButton;->access$200(Lcom/savedplots/FloatingPlotButton;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v0}, Lcom/savedplots/FloatingPlotButton;->access$300(Lcom/savedplots/FloatingPlotButton;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 78
    :cond_1
    return v2

    .line 81
    :pswitch_1
    iget-object p1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {p1}, Lcom/savedplots/FloatingPlotButton;->access$400(Lcom/savedplots/FloatingPlotButton;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {p1}, Lcom/savedplots/FloatingPlotButton;->access$500(Lcom/savedplots/FloatingPlotButton;)Lcom/savedplots/FloatingPlotButton$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {p1}, Lcom/savedplots/FloatingPlotButton;->access$500(Lcom/savedplots/FloatingPlotButton;)Lcom/savedplots/FloatingPlotButton$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/savedplots/FloatingPlotButton$OnClickListener;->onClick()V

    .line 86
    :cond_2
    return v2

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v0, v3}, Lcom/savedplots/FloatingPlotButton;->access$002(Lcom/savedplots/FloatingPlotButton;F)F

    .line 64
    iget-object v0, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/savedplots/FloatingPlotButton;->access$102(Lcom/savedplots/FloatingPlotButton;F)F

    .line 65
    iget-object p2, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v3}, Lcom/savedplots/FloatingPlotButton;->access$000(Lcom/savedplots/FloatingPlotButton;)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {p2, v0}, Lcom/savedplots/FloatingPlotButton;->access$202(Lcom/savedplots/FloatingPlotButton;F)F

    .line 66
    iget-object p2, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {v0}, Lcom/savedplots/FloatingPlotButton;->access$100(Lcom/savedplots/FloatingPlotButton;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p2, p1}, Lcom/savedplots/FloatingPlotButton;->access$302(Lcom/savedplots/FloatingPlotButton;F)F

    .line 67
    iget-object p1, p0, Lcom/savedplots/FloatingPlotButton$1;->this$0:Lcom/savedplots/FloatingPlotButton;

    invoke-static {p1, v1}, Lcom/savedplots/FloatingPlotButton;->access$402(Lcom/savedplots/FloatingPlotButton;Z)Z

    .line 68
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
