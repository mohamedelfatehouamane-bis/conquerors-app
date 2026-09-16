.class public Lcom/gpc/resourcestorage/bean/OPSResourcePack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPSResource"


# instance fields
.field private fileKey:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

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

.field private progress:F

.field private resourceId:Ljava/lang/String;

.field private status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field private statusStr:Ljava/lang/String;

.field private type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

.field private uniqueIdentifier:Ljava/lang/String;

.field private validityPeriod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Uploading:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iput-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void
.end method

.method private setStatusStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->statusStr:Ljava/lang/String;

    return-void
.end method

.method private setValidityPeriodTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "OPSResource"

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    const-string v1, "time is error"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0xb4

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v3, v1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "getValidityPeriod nowTime= "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; validity= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getFileKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->fileKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOPSResource()Lcom/gpc/resourcestorage/OPSResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/OPSResource;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/OPSResource;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResource;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResource;->setResourceId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->fileKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResource;->setDownloadKey(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->payload:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResource;->setPayload(Ljava/util/Map;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResource;->setUniqueIdentifier(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/OPSResourceTask;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/OPSResourceTask;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->setLocalPath(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->setId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->setStatus(Lcom/gpc/resourcestorage/bean/OPSResourceStatus;)V

    .line 6
    iget v1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->progress:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->setProgress(F)V

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
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->payload:Ljava/util/Map;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->progress:F

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-object v0
.end method

.method public getStatusStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->statusStr:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->uniqueIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityPeriod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->validityPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public isValidityPeriod()Z
    .locals 7

    const-string v0, "OPSResource"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->validityPeriod:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    const-string v4, "time is error"

    invoke-static {v0, v4, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0x0

    .line 8
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getValidityPeriod nowTime= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ; validityPeriodTime= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public setFileKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->fileKey:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setValidityPeriodTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->validityPeriod:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->payload:Ljava/util/Map;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->progress:F

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setStatusStr(Ljava/lang/String;)V

    .line 2
    const-string v0, "pass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void

    .line 4
    :cond_0
    const-string v0, "review"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void

    .line 7
    :cond_1
    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Denied:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->status:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-void
.end method

.method public setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-void
.end method

.method public setUniqueIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->uniqueIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setValidityPeriod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->validityPeriod:Ljava/lang/String;

    return-void
.end method
