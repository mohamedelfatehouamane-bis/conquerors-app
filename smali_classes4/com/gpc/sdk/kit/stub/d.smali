.class public Lcom/gpc/sdk/kit/stub/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "MainStub"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/gpc/sdk/kit/stub/Stub;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/kit/stub/Stub;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    .line 7
    const-string v0, "MainStub"

    invoke-static {v0, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    invoke-static {}, Lcom/gpc/sdk/kit/stub/e;->b()Lcom/gpc/sdk/kit/stub/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    invoke-static {}, Lcom/gpc/sdk/kit/stub/e;->b()Lcom/gpc/sdk/kit/stub/e;

    move-result-object v1

    const-class v2, Lcom/gpc/sdk/kit/stub/e;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    invoke-static {}, Lcom/gpc/sdk/kit/stub/f;->a()Lcom/gpc/sdk/kit/stub/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    invoke-static {}, Lcom/gpc/sdk/kit/stub/f;->a()Lcom/gpc/sdk/kit/stub/f;

    move-result-object v1

    const-class v2, Lcom/gpc/sdk/kit/stub/f;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/gpc/sdk/kit/stub/c;

    invoke-direct {v0}, Lcom/gpc/sdk/kit/stub/c;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    const-class v2, Lcom/gpc/sdk/kit/stub/c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/gpc/sdk/kit/stub/b;

    invoke-direct {v0}, Lcom/gpc/sdk/kit/stub/b;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    const-class v2, Lcom/gpc/sdk/kit/stub/b;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/gpc/sdk/kit/stub/g;

    invoke-direct {v0}, Lcom/gpc/sdk/kit/stub/g;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    const-class v2, Lcom/gpc/sdk/kit/stub/g;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/gpc/sdk/kit/stub/b;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    const-class v1, Lcom/gpc/sdk/kit/stub/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/kit/stub/b;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "onCreate"

    const-string v1, "MainStub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/d;->c:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/kit/stub/Stub;

    .line 7
    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/gpc/sdk/kit/stub/Stub;->onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 4

    .line 10
    const-string v0, "onStartUp"

    const-string v1, "MainStub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/kit/stub/Stub;

    .line 13
    :try_start_0
    invoke-interface {v2, p1}, Lcom/gpc/sdk/kit/stub/Stub;->onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const-string v0, "onDestroy"

    const-string v1, "MainStub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/kit/stub/Stub;

    .line 5
    :try_start_0
    invoke-interface {v2}, Lcom/gpc/sdk/kit/stub/Stub;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lcom/gpc/sdk/kit/stub/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/d;->a:Ljava/util/Map;

    const-class v1, Lcom/gpc/sdk/kit/stub/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/kit/stub/g;

    return-object v0
.end method
