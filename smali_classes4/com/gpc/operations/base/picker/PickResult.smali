.class public Lcom/gpc/operations/base/picker/PickResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/base/picker/PickResult$Status;
    }
.end annotation


# instance fields
.field private photoModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/gpc/operations/base/picker/PickResult$Status;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/PickResult;->photoModels:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/gpc/operations/base/picker/PickResult$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/PickResult;->status:Lcom/gpc/operations/base/picker/PickResult$Status;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/PickResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFileBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickResult;->photoModels:Ljava/util/List;

    return-void
.end method

.method public setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickResult;->status:Lcom/gpc/operations/base/picker/PickResult$Status;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickResult;->type:Ljava/lang/String;

    return-void
.end method
