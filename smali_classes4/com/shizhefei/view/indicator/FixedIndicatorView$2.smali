.class Lcom/shizhefei/view/indicator/FixedIndicatorView$2;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    check-cast p1, Landroid/view/ViewGroup;

    .line 205
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 206
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$500(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
