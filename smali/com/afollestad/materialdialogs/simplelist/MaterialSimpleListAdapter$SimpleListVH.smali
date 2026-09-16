.class Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MaterialSimpleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleListVH"
.end annotation


# instance fields
.field final adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

.field final icon:Landroid/widget/ImageView;

.field final title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020006

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->title:Landroid/widget/TextView;

    .line 106
    iput-object p2, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 112
    iget-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->access$000(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->access$000(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    .line 114
    invoke-static {v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->access$100(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->adapter:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$SimpleListVH;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->getItem(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;

    move-result-object v2

    .line 113
    invoke-interface {p1, v0, v1, v2}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter$Callback;->onMaterialListItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;ILcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;)V

    :cond_0
    return-void
.end method
