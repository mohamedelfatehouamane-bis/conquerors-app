.class public Lcom/gpc/operations/database/DataBaseModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# instance fields
.field private context:Landroid/content/Context;

.field private resourceUploaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/database/IDataBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/database/DataBaseModule;->resourceUploaderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDataBase(Ljava/lang/String;)Lcom/gpc/operations/database/IDataBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/database/DataBaseModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/database/DataBaseModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/database/IDataBase;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAsyncInit()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/database/dao/OPSResourceDao;

    iget-object v1, p0, Lcom/gpc/operations/database/DataBaseModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/operations/database/dao/OPSResourceDao;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/database/DataBaseModule;->resourceUploaderMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/gpc/operations/database/IDataBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/database/DataBaseModule;->context:Landroid/content/Context;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
