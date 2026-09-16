.class Lcom/photoselector/ui/PhotoSelectorActivity$1;
.super Ljava/lang/Object;
.source "PhotoSelectorActivity.java"

# interfaces
.implements Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/photoselector/ui/PhotoSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/ui/PhotoSelectorActivity;


# direct methods
.method constructor <init>(Lcom/photoselector/ui/PhotoSelectorActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity$1;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/photoselector/model/AlbumModel;",
            ">;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity$1;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$000(Lcom/photoselector/ui/PhotoSelectorActivity;)Lcom/photoselector/ui/AlbumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/photoselector/ui/AlbumAdapter;->update(Ljava/util/List;)V

    return-void
.end method
