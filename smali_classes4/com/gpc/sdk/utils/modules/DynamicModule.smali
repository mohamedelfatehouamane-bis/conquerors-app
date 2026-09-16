.class public Lcom/gpc/sdk/utils/modules/DynamicModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field public static final MISC_MODULE:Ljava/lang/String; = "com.gpc.sdk.utils.modules.MiscModule"

.field public static final PAYMENT_MODULE:Ljava/lang/String; = "com.gpc.sdk.utils.modules.PaymentModule"

.field private static final TAG:Ljava/lang/String; = "DynamicModule"


# instance fields
.field private clzNameTomoduleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">;"
        }
    .end annotation
.end field

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->clzNameTomoduleMap:Ljava/util/Map;

    return-void
.end method

.method private loadDynamicModule(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/Module;
    .locals 4

    const-string v0, "DynamicModule"

    const-string v1, "value:"

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 4
    const-class v3, Lcom/gpc/sdk/utils/modules/annotation/ModuleTarget;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/utils/modules/annotation/ModuleTarget;

    if-eqz p1, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/sdk/utils/modules/annotation/ModuleTarget;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p1

    .line 12
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClassNotFoundException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->clzNameTomoduleMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/utils/modules/Module;

    return-object p1
.end method

.method public onAsyncInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/Module;->onAsyncInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDelayedInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/Module;->onDelayedInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/Module;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/utils/modules/Module;->onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/Module;->onInitFinish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 4

    .line 1
    const-string v0, "com.gpc.sdk.utils.modules.MiscModule"

    invoke-direct {p0, v0}, Lcom/gpc/sdk/utils/modules/DynamicModule;->loadDynamicModule(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v1

    const-string v2, "DynamicModule"

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->clzNameTomoduleMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "MiscModule is null."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    const-string v0, "com.gpc.sdk.utils.modules.PaymentModule"

    invoke-direct {p0, v0}, Lcom/gpc/sdk/utils/modules/DynamicModule;->loadDynamicModule(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->clzNameTomoduleMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    const-string v0, "PaymentModule is null."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/utils/modules/Module;->onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/utils/modules/Module;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DynamicModule;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/utils/modules/Module;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
