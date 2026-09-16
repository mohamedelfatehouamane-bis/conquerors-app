.class public Lcom/gpc/operations/database/dao/bean/DBResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fileKey:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private statusStr:Ljava/lang/String;

.field private type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

.field private uniqueIdentifier:Ljava/lang/String;

.field private validityPeriod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->initData(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    return-void
.end method

.method private initData(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->uniqueIdentifier:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getResourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->resourceId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->localPath:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getFileKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->fileKey:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getStatusStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->statusStr:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getValidityPeriod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->validityPeriod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->fileKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOPSResource()Lcom/gpc/resourcestorage/bean/OPSResourcePack;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setUniqueIdentifier(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->statusStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setStatus(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setResourceId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setLocalPath(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->fileKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setFileKey(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->validityPeriod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setValidityPeriod(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->statusStr:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->uniqueIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityPeriod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->validityPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public setFileKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->fileKey:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setStatusStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->statusStr:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-void
.end method

.method public setUniqueIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->uniqueIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setValidityPeriod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/dao/bean/DBResource;->validityPeriod:Ljava/lang/String;

    return-void
.end method
