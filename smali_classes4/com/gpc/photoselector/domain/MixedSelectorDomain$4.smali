.class Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;
.super Ljava/lang/Object;
.source "MixedSelectorDomain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/domain/MixedSelectorDomain;->updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    iput-object p2, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-static {v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->access$000(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/photoselector/controller/AlbumController;->getAlbums()Ljava/util/Map;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-static {v1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->access$100(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/VideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/photoselector/controller/VideoController;->getAlbums()Ljava/util/Map;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/photoselector/model/AlbumModel;

    .line 92
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/photoselector/model/AlbumModel;

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 94
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 98
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 107
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/AlbumModel;->getCount()I

    move-result v6

    invoke-virtual {v4}, Lcom/gpc/photoselector/model/AlbumModel;->getCount()I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/AlbumModel;->setCount(I)V

    .line 108
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/AlbumModel;->getCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/gpc/photoselector/model/AlbumModel;->getCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/gpc/photoselector/model/AlbumModel;->setCount(I)V

    .line 111
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/photoselector/model/AlbumModel;

    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 123
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 127
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_8
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 132
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 133
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
