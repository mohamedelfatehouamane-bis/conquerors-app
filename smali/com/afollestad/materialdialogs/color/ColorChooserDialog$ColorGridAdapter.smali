.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[[I

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    aget-object v0, v0, v1

    array-length v0, v0

    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[[I

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    aget-object v0, v0, v1

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[I

    move-result-object v0

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 798
    new-instance p2, Lcom/afollestad/materialdialogs/color/CircleView;

    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-virtual {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/afollestad/materialdialogs/color/CircleView;-><init>(Landroid/content/Context;)V

    .line 799
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/afollestad/materialdialogs/color/CircleView;

    .line 802
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[[I

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    aget-object v0, v0, v1

    aget v0, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[I

    move-result-object v0

    aget v0, v0, p1

    .line 803
    :goto_0
    invoke-virtual {p3, v0}, Lcom/afollestad/materialdialogs/color/CircleView;->setBackgroundColor(I)V

    .line 804
    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 805
    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3, v1}, Lcom/afollestad/materialdialogs/color/CircleView;->setSelected(Z)V

    goto :goto_3

    .line 807
    :cond_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v1

    if-ne v1, p1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3, v1}, Lcom/afollestad/materialdialogs/color/CircleView;->setSelected(Z)V

    .line 809
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v0, v1, v2

    const-string p1, "%d:%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setTag(Ljava/lang/Object;)V

    .line 810
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-virtual {p3, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-virtual {p3, p1}, Lcom/afollestad/materialdialogs/color/CircleView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
