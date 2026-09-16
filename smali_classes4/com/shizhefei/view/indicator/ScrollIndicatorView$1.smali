.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$000(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$000(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$102(Lcom/shizhefei/view/indicator/ScrollIndicatorView;F)F

    .line 66
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$200(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method
