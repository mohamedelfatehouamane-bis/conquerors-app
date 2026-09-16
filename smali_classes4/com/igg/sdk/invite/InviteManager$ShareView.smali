.class Lcom/igg/sdk/invite/InviteManager$ShareView;
.super Landroid/widget/LinearLayout;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/sdk/invite/InviteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareView"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/igg/sdk/invite/InviteManager;


# direct methods
.method public constructor <init>(Lcom/igg/sdk/invite/InviteManager;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager$ShareView;->this$0:Lcom/igg/sdk/invite/InviteManager;

    .line 159
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/igg/sdk/invite/R$layout;->share_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    sget p1, Lcom/igg/sdk/invite/R$id;->container:I

    invoke-virtual {p0, p1}, Lcom/igg/sdk/invite/InviteManager$ShareView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager$ShareView;->mContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 168
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/igg/sdk/invite/R$layout;->listitem_invite_more:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 170
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igg/sdk/invite/InviteElement;

    const v3, 0x1020014

    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0xbbbbbc

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v4, v2, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget v3, Lcom/igg/sdk/invite/R$id;->icon:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 175
    iget-object v2, v2, Lcom/igg/sdk/invite/InviteElement;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager$ShareView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
