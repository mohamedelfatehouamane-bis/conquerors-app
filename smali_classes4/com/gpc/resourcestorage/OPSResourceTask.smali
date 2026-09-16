.class public Lcom/gpc/resourcestorage/OPSResourceTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private progress:F

.field private status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field private type:Lcom/gpc/resourcestorage/bean/OPSUploadType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->progress:F

    .line 11
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Uploading:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iput-object v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->progress:F

    return v0
.end method

.method public getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-object v0
.end method

.method public getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->progress:F

    return-void
.end method

.method public setStatus(Lcom/gpc/resourcestorage/bean/OPSResourceStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void
.end method

.method public setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OPSResourceTask{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/resourcestorage/OPSResourceTask;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
