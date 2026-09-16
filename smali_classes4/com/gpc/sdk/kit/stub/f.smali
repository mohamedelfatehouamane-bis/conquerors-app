.class public Lcom/gpc/sdk/kit/stub/f;
.super Lcom/gpc/sdk/kit/stub/a;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "kungfu_config"

.field public static f:Lcom/gpc/sdk/kit/stub/f;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/gpc/util/LocalStorage;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/kit/stub/a;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/gpc/sdk/kit/stub/f;->d:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/gpc/sdk/kit/stub/f;
    .locals 2

    const-class v0, Lcom/gpc/sdk/kit/stub/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/kit/stub/f;->f:Lcom/gpc/sdk/kit/stub/f;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/kit/stub/f;

    invoke-direct {v1}, Lcom/gpc/sdk/kit/stub/f;-><init>()V

    sput-object v1, Lcom/gpc/sdk/kit/stub/f;->f:Lcom/gpc/sdk/kit/stub/f;

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/kit/stub/f;->f:Lcom/gpc/sdk/kit/stub/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/a;->onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Lcom/gpc/sdk/kit/stub/f;->d:Z

    if-nez p1, :cond_0

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/f;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Lcom/gpc/util/LocalStorage;

    const-string v0, "kungfu_config"

    invoke-direct {p1, p2, v0}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/f;->c:Lcom/gpc/util/LocalStorage;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/gpc/sdk/kit/stub/f;->d:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/kit/stub/a;->onDestroy()V

    return-void
.end method

.method public onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 0

    return-void
.end method
