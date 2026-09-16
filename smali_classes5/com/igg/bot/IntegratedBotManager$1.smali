.class Lcom/igg/bot/IntegratedBotManager$1;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$frameLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/igg/bot/IntegratedBotManager$1;->val$frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    :try_start_0
    new-instance v0, Lcom/igg/bot/IntegratedBotManager;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager$1;->val$frameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/igg/bot/IntegratedBotManager;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/igg/bot/IntegratedBotManager$1;)V

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$002(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/IntegratedBotManager;

    .line 55
    invoke-static {}, Lcom/igg/bot/IntegratedBotManager;->access$000()Lcom/igg/bot/IntegratedBotManager;

    move-result-object v0

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$200(Lcom/igg/bot/IntegratedBotManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_0
    return-void
.end method
