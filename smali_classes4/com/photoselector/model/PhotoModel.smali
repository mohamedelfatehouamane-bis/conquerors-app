.class public Lcom/photoselector/model/PhotoModel;
.super Ljava/lang/Object;
.source "PhotoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isChecked:Z

.field private originalPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/photoselector/model/PhotoModel;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/photoselector/model/PhotoModel;->originalPath:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/photoselector/model/PhotoModel;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/photoselector/model/PhotoModel;->originalPath:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/photoselector/model/PhotoModel;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/photoselector/model/PhotoModel;->isChecked:Z

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/photoselector/model/PhotoModel;->originalPath:Ljava/lang/String;

    return-void
.end method
