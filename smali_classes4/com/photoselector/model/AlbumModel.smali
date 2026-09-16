.class public Lcom/photoselector/model/AlbumModel;
.super Ljava/lang/Object;
.source "AlbumModel.java"


# instance fields
.field private count:I

.field private isCheck:Z

.field private name:Ljava/lang/String;

.field private recent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/photoselector/model/AlbumModel;->count:I

    .line 25
    iput-object p3, p0, Lcom/photoselector/model/AlbumModel;->recent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/photoselector/model/AlbumModel;->count:I

    .line 32
    iput-object p3, p0, Lcom/photoselector/model/AlbumModel;->recent:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/photoselector/model/AlbumModel;->isCheck:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/photoselector/model/AlbumModel;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecent()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/photoselector/model/AlbumModel;->recent:Ljava/lang/String;

    return-object v0
.end method

.method public increaseCount()V
    .locals 1

    .line 69
    iget v0, p0, Lcom/photoselector/model/AlbumModel;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/photoselector/model/AlbumModel;->count:I

    return-void
.end method

.method public isCheck()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/photoselector/model/AlbumModel;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/photoselector/model/AlbumModel;->isCheck:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/photoselector/model/AlbumModel;->count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/photoselector/model/AlbumModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setRecent(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/photoselector/model/AlbumModel;->recent:Ljava/lang/String;

    return-void
.end method
