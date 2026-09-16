.class Lcom/igg/bot/IntegratedBotManager$4$1;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager$4;->onPlotSelected(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igg/bot/IntegratedBotManager$4;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/igg/bot/IntegratedBotManager$4;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput p2, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->val$x:F

    iput p3, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->val$y:F

    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->this$1:Lcom/igg/bot/IntegratedBotManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->this$1:Lcom/igg/bot/IntegratedBotManager$4;

    iget-object v0, v0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    iget v1, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->val$x:F

    iget v2, p0, Lcom/igg/bot/IntegratedBotManager$4$1;->val$y:F

    invoke-static {v0, v1, v2}, Lcom/igg/bot/IntegratedBotManager;->access$1000(Lcom/igg/bot/IntegratedBotManager;FF)V

    .line 203
    return-void
.end method
