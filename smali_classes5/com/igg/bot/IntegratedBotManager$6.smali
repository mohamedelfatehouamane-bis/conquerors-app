.class Lcom/igg/bot/IntegratedBotManager$6;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->showPlotNamingDialog(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 280
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$6;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/igg/bot/IntegratedBotManager$6;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p1}, Lcom/igg/bot/IntegratedBotManager;->access$1200(Lcom/igg/bot/IntegratedBotManager;)V

    .line 284
    return-void
.end method
