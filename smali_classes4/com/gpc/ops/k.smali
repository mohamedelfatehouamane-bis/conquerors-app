.class public Lcom/gpc/ops/k;
.super Lcom/gpc/ops/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/ops/k$c;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "OPSResourceUploader"


# instance fields
.field public a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

.field public b:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

.field public c:Landroid/app/Activity;

.field public d:Lcom/gpc/operations/database/IDataBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/operations/database/IDataBase<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;Lcom/gpc/operations/database/IDataBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gpc/resourcestorage/bean/OPSUploadScene;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/database/IDataBase<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/gpc/ops/l;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gpc/ops/k;->i:Z

    .line 13
    iput-object p2, p0, Lcom/gpc/ops/k;->b:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    .line 14
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x1400

    .line 16
    iput-wide v0, p0, Lcom/gpc/ops/k;->k:J

    .line 17
    const-string p2, "avatar"

    iput-object p2, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->ChatImageUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    if-ne p2, v0, :cond_1

    const-wide/16 v0, 0x2800

    .line 20
    iput-wide v0, p0, Lcom/gpc/ops/k;->k:J

    .line 21
    const-string p2, "chat"

    iput-object p2, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    .line 24
    iput-wide v0, p0, Lcom/gpc/ops/k;->k:J

    .line 25
    const-string p2, "none"

    iput-object p2, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    .line 28
    iput-object p4, p0, Lcom/gpc/ops/k;->d:Lcom/gpc/operations/database/IDataBase;

    .line 29
    iput-object p3, p0, Lcom/gpc/ops/k;->f:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OPSImageResourceUploader uploadKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPSResourceUploader"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getResourceStorageMediaPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/ops/k;->g:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "OPSImageResourceUploader appDirectory: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/gpc/ops/k;->g:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/database/IDataBase;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/database/IDataBase<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->None:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/gpc/ops/k;-><init>(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;Lcom/gpc/operations/database/IDataBase;)V

    .line 35
    const-string p1, "blueprint"

    iput-object p1, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/gpc/ops/k;->l:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "OPSImageResourceUploader filePath: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPSResourceUploader"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    .line 43
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    const-string p3, ""

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    const-string p4, "_uid"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "OPSImageResourceUploader payload: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/k;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/ops/k;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/k;Ljava/util/ArrayList;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/ops/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/k;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/ops/k;)Lcom/gpc/resourcestorage/listener/ResourceUploadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/ops/k;)Lcom/gpc/operations/database/IDataBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/k;->d:Lcom/gpc/operations/database/IDataBase;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)Lcom/gpc/photoselector/model/PhotoModel;
    .locals 3

    .line 105
    new-instance v0, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v0}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 106
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setInternalFile(Z)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setUri(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setSize(J)V

    .line 114
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 118
    const-string v1, "OPSResourceUploader"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;
    .locals 3

    .line 98
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setLocalPath(Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/gpc/resourcestorage/bean/OPSUploadType;->Image:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 101
    iget-object p1, p0, Lcom/gpc/ops/k;->d:Lcom/gpc/operations/database/IDataBase;

    new-instance v1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-direct {v1, v0}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {p1, v1}, Lcom/gpc/operations/database/IDataBase;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 102
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setId(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/gpc/ops/k;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setUniqueIdentifier(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setPayload(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Lcom/gpc/resourcestorage/OPSResourceTask;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;
    .locals 2

    .line 119
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setLocalPath(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setType(Lcom/gpc/resourcestorage/bean/OPSUploadType;)V

    .line 122
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    const-string v0, "OPSResourceUploader"

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/photoselector/model/PhotoModel;

    .line 70
    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    .line 73
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/gpc/ops/k;->g:Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/gpc/photoselector/util/BitmapManager;->copyFileByImageId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 80
    invoke-static {v0, v5, v6}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/gpc/ops/k;->g:Ljava/lang/String;

    invoke-static {v2, v7, v3}, Lcom/gpc/photoselector/util/BitmapManager;->copyFileByImageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 87
    invoke-static {v0, v5, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    if-nez v6, :cond_3

    goto :goto_0

    .line 93
    :cond_3
    new-instance v2, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v2}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 94
    invoke-virtual {v2, v4}, Lcom/gpc/photoselector/model/PhotoModel;->setInternalFile(Z)V

    .line 95
    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/OPSResourceTask;

    .line 24
    invoke-virtual {v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/OPSResourceTask;

    .line 31
    invoke-virtual {v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz v0, :cond_0

    .line 66
    sget-object v1, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/OPSResourceTask;

    .line 9
    invoke-virtual {v1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/ops/k;->b()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 44
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {p0, v4}, Lcom/gpc/ops/k;->a(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v4

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v4}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    .line 52
    iget-object v3, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz v3, :cond_2

    .line 53
    invoke-interface {v3, v1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onSelected(Ljava/util/List;)V

    .line 56
    :cond_2
    iget-boolean v1, p0, Lcom/gpc/ops/k;->i:Z

    if-nez v1, :cond_3

    .line 57
    const-string p1, "OPSResourceUploader"

    const-string v0, "shouldUploadOnceSelected is false, will not upload once selected."

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p0, v1}, Lcom/gpc/ops/k;->b(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/gpc/ops/k;->b()V

    .line 63
    iget-object p1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz p1, :cond_5

    .line 64
    invoke-interface {p1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onCancel()V

    :cond_5
    return-void
.end method

.method public final b(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;
    .locals 3

    .line 50
    new-instance v0, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-direct {v0, p1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;-><init>(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 51
    const-string p1, "RESOURCE_UPLOAD"

    invoke-virtual {v0, p1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setModuleName(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setType(Ljava/lang/String;)V

    .line 53
    iget-wide v1, p0, Lcom/gpc/ops/k;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setMaxUploadSize(J)V

    .line 54
    iget-object p1, p0, Lcom/gpc/ops/k;->j:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setPayload(Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/gpc/photoselector/model/PhotoModel;
    .locals 2

    .line 43
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-direct {v0}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->setUniqueIdentifier(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/gpc/ops/k;->d:Lcom/gpc/operations/database/IDataBase;

    new-instance v1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-direct {v1, v0}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {p1, v1}, Lcom/gpc/operations/database/IDataBase;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getOPSResource()Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 12
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->removeResourceUploader(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V
    .locals 4

    .line 39
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/gpc/ops/k;->b(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/gpc/operations/service/upload/UploadImageTask;

    iget-object v2, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    new-instance v3, Lcom/gpc/ops/k$c;

    invoke-direct {v3, p0, p1}, Lcom/gpc/ops/k$c;-><init>(Lcom/gpc/ops/k;Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/gpc/operations/service/upload/UploadImageTask;-><init>(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V

    .line 42
    invoke-interface {v1}, Lcom/gpc/operations/service/upload/UploadTask;->excute()V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {p0, v4}, Lcom/gpc/ops/k;->a(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v4

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v4}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iput-object v1, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    .line 31
    iget-object v3, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz v3, :cond_2

    .line 32
    invoke-interface {v3, v1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onSelected(Ljava/util/List;)V

    .line 35
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    invoke-virtual {p0, v1}, Lcom/gpc/ops/k;->b(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz p1, :cond_4

    .line 38
    invoke-interface {p1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onCancel()V

    :cond_4
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/OPSResourceTask;

    .line 8
    new-instance v2, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p0, v1}, Lcom/gpc/ops/k;->a(Lcom/gpc/resourcestorage/OPSResourceTask;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/k;->d:Lcom/gpc/operations/database/IDataBase;

    invoke-interface {p1, v0}, Lcom/gpc/operations/database/IDataBase;->delete(Ljava/util/List;)V

    return-void

    .line 11
    :cond_2
    :goto_1
    const-string p1, "OPSResourceUploader"

    const-string v0, "deleteResourceFromDB task is null or empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/gpc/operations/utils/ExcutorUtils;->instanceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/ops/k$a;

    invoke-direct {v1, p0}, Lcom/gpc/ops/k$a;-><init>(Lcom/gpc/ops/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string p1, "OPSResourceUploader"

    const-string v0, "retry uniqueIdentifier is error"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->b(Ljava/lang/String;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    sget-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->a(Lcom/gpc/photoselector/model/PhotoModel;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourcePack;->getOPSResourceTask()Lcom/gpc/resourcestorage/OPSResourceTask;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iput-object v0, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    .line 17
    iget-object v1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v1, v0}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onSelected(Ljava/util/List;)V

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gpc/ops/k;->b(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    return-void
.end method

.method public cancelOnFinishFinalSelection()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/gpc/ops/k;->b(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/ops/k;->b()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startUploadController uploadScene:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/k;->b:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isIntentModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceUploader"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/gpc/ops/k$b;->a:[I

    iget-object v2, p0, Lcom/gpc/ops/k;->b:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 21
    const-string v0, "OPSUploadScene is error"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/resourcestorage/ui/PickerController;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/resourcestorage/ui/PickerController;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/gpc/ops/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/ops/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;->addResourceUploader(Ljava/lang/String;Lcom/gpc/ops/l;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/k;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/ops/k;->d()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/k;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gpc/ops/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSize(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMaxSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceUploader"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Lcom/gpc/ops/k;->k:J

    return-void
.end method

.method public setResourceUploadListener(Lcom/gpc/resourcestorage/listener/ResourceUploadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    return-void
.end method

.method public setShouldUploadOnceSelected(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setShouldUploadOnceSelected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceUploader"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/gpc/ops/k;->i:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/k;->m:Ljava/lang/String;

    const-string v1, "blueprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/ops/k;->c()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/ops/k;->e()V

    return-void
.end method

.method public uploadOnFinishFinalSelection(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/gpc/ops/k;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/ops/k;->b(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/ops/k;->h:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/resourcestorage/OPSResourceTask;

    invoke-virtual {p0, v1}, Lcom/gpc/ops/k;->a(Lcom/gpc/resourcestorage/OPSResourceTask;)Lcom/gpc/resourcestorage/bean/OPSResourcePack;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/gpc/ops/k;->b(Lcom/gpc/resourcestorage/bean/OPSResourcePack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    const-string p1, "OPSResourceUploader"

    const-string v0, "uploadOnFinishFinalSelection tasks is null or empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/gpc/ops/k;->b()V

    .line 16
    iget-object p1, p0, Lcom/gpc/ops/k;->a:Lcom/gpc/resourcestorage/listener/ResourceUploadListener;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/gpc/resourcestorage/listener/ResourceUploadListener;->onCancel()V

    :cond_2
    return-void
.end method
