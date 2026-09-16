.class Lcom/igg/bot/IntegratedBotManager$3;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->createFloatingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:F

.field private initialY:F

.field private isClick:Z

.field final synthetic this$0:Lcom/igg/bot/IntegratedBotManager;


# direct methods
.method constructor <init>(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->isClick:Z

    .line 127
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 159
    return v1

    .line 144
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialTouchX:F

    sub-float/2addr v0, v3

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialTouchY:F

    sub-float/2addr p2, v3

    .line 146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/igg/bot/IntegratedBotManager$3;->isClick:Z

    .line 149
    :cond_1
    iget v1, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialX:F

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    .line 150
    iget v0, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialY:F

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 151
    return v2

    .line 154
    :pswitch_1
    iget-boolean p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->isClick:Z

    if-eqz p1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p1}, Lcom/igg/bot/IntegratedBotManager;->access$700(Lcom/igg/bot/IntegratedBotManager;)V

    .line 157
    :cond_2
    return v2

    .line 136
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialX:F

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialY:F

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialTouchX:F

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/igg/bot/IntegratedBotManager$3;->initialTouchY:F

    .line 140
    iput-boolean v2, p0, Lcom/igg/bot/IntegratedBotManager$3;->isClick:Z

    .line 141
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
