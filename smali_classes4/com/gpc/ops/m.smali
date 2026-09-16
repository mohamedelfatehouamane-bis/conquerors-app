.class public Lcom/gpc/ops/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "OPSResourceCacheHelper"

.field public static final d:Ljava/lang/String; = "OPSResourceCacheHelper"

.field public static final e:I = 0x3e8

.field public static final f:Ljava/lang/String; = "KEY_CACHE_SIZE"


# instance fields
.field public a:Lcom/gpc/operations/migrate/utils/LocalStorage;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/utils/LocalStorage;

    const-string v1, "OPSResourceCacheHelper"

    invoke-direct {v0, p1, v1}, Lcom/gpc/operations/migrate/utils/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/ops/m;->a:Lcom/gpc/operations/migrate/utils/LocalStorage;

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getResourceStorageMediaPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/ops/m;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/gpc/ops/m;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/m;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/m;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    const-string v0, "OPSResourceCacheHelper"

    const-string v1, "cleanCache"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/ops/m$a;

    invoke-direct {v0, p0}, Lcom/gpc/ops/m$a;-><init>(Lcom/gpc/ops/m;)V

    invoke-static {v0}, Lcom/gpc/operations/utils/ExcutorUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanCache size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/gpc/ops/m$b;

    invoke-direct {v0, p0, p1}, Lcom/gpc/ops/m$b;-><init>(Lcom/gpc/ops/m;I)V

    invoke-static {v0}, Lcom/gpc/operations/utils/ExcutorUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    const-string v0, "initClean"

    const-string v1, "OPSResourceCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->listFileSortByModifyTime(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/gpc/ops/m;->a:Lcom/gpc/operations/migrate/utils/LocalStorage;

    const-string v3, "KEY_CACHE_SIZE"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/gpc/operations/migrate/utils/LocalStorage;->readInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initClean deleteSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/gpc/ops/m;->a(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCapacity size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSResourceCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/m;->a:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "KEY_CACHE_SIZE"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
