.class public Lcom/gpc/photoselector/model/PhotoModel;
.super Ljava/lang/Object;
.source "PhotoModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/gpc/photoselector/model/PhotoModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final IMAGE:Ljava/lang/String; = "image"

.field private static final TAG:Ljava/lang/String; = "PhotoModel"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private absoluteFileSystemPath:Ljava/lang/String;

.field public dateAdded:Ljava/lang/String;

.field private id:J

.field private index:I

.field public internalFile:Z

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private size:J

.field public type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "image"

    iput-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->internalFile:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gpc/photoselector/model/PhotoModel;)I
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 122
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/gpc/photoselector/model/PhotoModel;->getDateAdded()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v0

    long-to-int p1, v2

    return p1

    :catch_0
    move-exception p1

    .line 124
    const-string v0, "PhotoModel"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/model/PhotoModel;->compareTo(Lcom/gpc/photoselector/model/PhotoModel;)I

    move-result p1

    return p1
.end method

.method public getAbsoluteFileSystemPath()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->absoluteFileSystemPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->dateAdded:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->id:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->isChecked:Z

    return v0
.end method

.method public isInternalFile()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/gpc/photoselector/model/PhotoModel;->internalFile:Z

    return v0
.end method

.method public setAbsoluteFileSystemPath(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->absoluteFileSystemPath:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->isChecked:Z

    return-void
.end method

.method public setDateAdded(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->dateAdded:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->id:J

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->index:I

    return-void
.end method

.method public setInternalFile(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->internalFile:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->size:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->type:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gpc/photoselector/model/PhotoModel;->uri:Ljava/lang/String;

    return-void
.end method
