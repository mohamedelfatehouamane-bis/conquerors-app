.class public Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private absoluteFileSystemPath:Ljava/lang/String;

.field private id:J

.field public internalFile:Z

.field private itemId:Ljava/lang/String;

.field private maxUploadSize:J

.field private moduleName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:J

.field private type:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;

.field private uploadToken:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->id:J

    .line 3
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->size:J

    .line 5
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uri:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->absoluteFileSystemPath:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->isInternalFile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->internalFile:Z

    .line 8
    iget-object p1, p1, Lcom/gpc/photoselector/model/PhotoModel;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbsoluteFileSystemPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->absoluteFileSystemPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->id:J

    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->maxUploadSize:J

    return-wide v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->payload:Ljava/util/Map;

    return-object v0
.end method

.method public getPayloadString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->payload:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->payload:Ljava/util/Map;

    invoke-static {v0}, Lcom/gpc/operations/utils/JsonUtils;->map2JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isInternalFile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->internalFile:Z

    return v0
.end method

.method public setAbsoluteFileSystemPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->absoluteFileSystemPath:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->id:J

    return-void
.end method

.method public setInternalFile(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->internalFile:Z

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->maxUploadSize:J

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->name:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->payload:Ljava/util/Map;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->size:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->type:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uploadToken:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->uri:Ljava/lang/String;

    return-void
.end method
