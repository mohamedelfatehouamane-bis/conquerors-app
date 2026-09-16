.class Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$1;
.super Ljava/lang/Object;
.source "PhotoSelectorBaseActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$1;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

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
            "Lcom/gpc/photoselector/model/AlbumModel;",
            ">;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$1;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->access$000(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)Lcom/gpc/photoselector/ui/AlbumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/ui/AlbumAdapter;->update(Ljava/util/List;)V

    return-void
.end method
