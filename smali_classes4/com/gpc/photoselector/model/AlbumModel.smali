.class public Lcom/gpc/photoselector/model/AlbumModel;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/gpc/photoselector/model/AlbumModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_ORDER:I = 0xa


# instance fields
.field private count:I

.field private isCheck:Z

.field private name:Ljava/lang/String;

.field private order:I

.field private photoModel:Lcom/gpc/photoselector/model/PhotoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/gpc/photoselector/model/PhotoModel;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/gpc/photoselector/model/AlbumModel;->count:I

    .line 28
    iput-object p3, p0, Lcom/gpc/photoselector/model/AlbumModel;->photoModel:Lcom/gpc/photoselector/model/PhotoModel;

    .line 29
    iput-boolean p4, p0, Lcom/gpc/photoselector/model/AlbumModel;->isCheck:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gpc/photoselector/model/AlbumModel;)I
    .locals 3

    const/16 v0, 0xa

    .line 79
    iget v1, p0, Lcom/gpc/photoselector/model/AlbumModel;->order:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/model/PhotoModel;->compareTo(Lcom/gpc/photoselector/model/PhotoModel;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/gpc/photoselector/model/AlbumModel;

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/model/AlbumModel;->compareTo(Lcom/gpc/photoselector/model/AlbumModel;)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->order:I

    return v0
.end method

.method public getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->photoModel:Lcom/gpc/photoselector/model/PhotoModel;

    return-object v0
.end method

.method public increaseCount()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->count:I

    return-void
.end method

.method public isCheck()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/gpc/photoselector/model/AlbumModel;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->isCheck:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->order:I

    return-void
.end method

.method public setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gpc/photoselector/model/AlbumModel;->photoModel:Lcom/gpc/photoselector/model/PhotoModel;

    return-void
.end method
