.class public Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIlE_NAME:Ljava/lang/String; = "OPS_legacy_task"

.field private static final TAG:Ljava/lang/String; = "LegacyTaskPersistence"


# instance fields
.field private storage:Lcom/gpc/operations/migrate/utils/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/utils/LocalStorage;

    const-string v1, "OPS_legacy_task"

    invoke-direct {v0, p1, v1}, Lcom/gpc/operations/migrate/utils/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/LocalStorage;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;->creatFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknow type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LegacyTaskPersistence"

    invoke-static {v4, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public remove(Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/LocalStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public save(Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
