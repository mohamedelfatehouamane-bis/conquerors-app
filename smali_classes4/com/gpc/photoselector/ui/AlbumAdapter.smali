.class public Lcom/gpc/photoselector/ui/AlbumAdapter;
.super Lcom/gpc/photoselector/ui/MBaseAdapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/photoselector/ui/MBaseAdapter<",
        "Lcom/gpc/photoselector/model/AlbumModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/AlbumModel;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/gpc/photoselector/ui/MBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 21
    new-instance p2, Lcom/gpc/photoselector/ui/AlbumItem;

    iget-object p3, p0, Lcom/gpc/photoselector/ui/AlbumAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/gpc/photoselector/ui/AlbumItem;-><init>(Landroid/content/Context;)V

    move-object p3, p2

    goto :goto_0

    .line 24
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/gpc/photoselector/ui/AlbumItem;

    move-object v1, p3

    move-object p3, p2

    move-object p2, v1

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/AlbumAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/photoselector/model/AlbumModel;

    invoke-virtual {p2, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->update(Lcom/gpc/photoselector/model/AlbumModel;)V

    return-object p3
.end method
