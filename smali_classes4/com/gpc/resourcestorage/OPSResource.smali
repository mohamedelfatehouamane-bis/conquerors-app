.class public Lcom/gpc/resourcestorage/OPSResource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPSResource"


# instance fields
.field private downloadKey:Ljava/lang/String;

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

.field private resourceId:Ljava/lang/String;

.field private type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

.field private uniqueIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResource;->downloadKey:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResource;->payload:Ljava/util/Map;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResource;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/OPSResource;->uniqueIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResource;->downloadKey:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResource;->payload:Ljava/util/Map;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResource;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResource;->type:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-void
.end method

.method public setUniqueIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/OPSResource;->uniqueIdentifier:Ljava/lang/String;

    return-void
.end method
