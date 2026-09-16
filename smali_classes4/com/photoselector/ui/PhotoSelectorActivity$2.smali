.class Lcom/photoselector/ui/PhotoSelectorActivity$2;
.super Ljava/lang/Object;
.source "PhotoSelectorActivity.java"

# interfaces
.implements Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;


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

    .line 363
    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$100(Lcom/photoselector/ui/PhotoSelectorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    sget v2, Lcom/photoselector/R$string;->recent_pictures:I

    invoke-virtual {v1, v2}, Lcom/photoselector/ui/PhotoSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$200(Lcom/photoselector/ui/PhotoSelectorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/photoselector/model/PhotoModel;

    invoke-direct {v0}, Lcom/photoselector/model/PhotoModel;-><init>()V

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$300(Lcom/photoselector/ui/PhotoSelectorActivity;)Lcom/photoselector/ui/PhotoSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/photoselector/ui/PhotoSelectorAdapter;->update(Ljava/util/List;)V

    .line 369
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$400(Lcom/photoselector/ui/PhotoSelectorActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 370
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/photoselector/ui/PhotoSelectorActivity;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->access$500(Lcom/photoselector/ui/PhotoSelectorActivity;)V

    return-void
.end method
