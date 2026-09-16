.class Lcom/igg/sdk/invite/InviteManager$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/sdk/invite/InviteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/igg/sdk/invite/InviteElement;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field res:I

.field final synthetic this$0:Lcom/igg/sdk/invite/InviteManager;


# direct methods
.method public constructor <init>(Lcom/igg/sdk/invite/InviteManager;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;)V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->this$0:Lcom/igg/sdk/invite/InviteManager;

    .line 307
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 308
    iput p3, p0, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->res:I

    .line 309
    iput-object p2, p0, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 314
    iget-object p2, p0, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p3, p0, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->res:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 315
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/igg/sdk/invite/InviteManager$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igg/sdk/invite/InviteElement;

    const p3, 0x1020014

    .line 318
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, -0xbbbbbc

    .line 319
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v0, p1, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    sget p3, Lcom/igg/sdk/invite/R$id;->icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 322
    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
