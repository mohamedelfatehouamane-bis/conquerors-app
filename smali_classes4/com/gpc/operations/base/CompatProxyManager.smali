.class public Lcom/gpc/operations/base/CompatProxyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/base/CompatProxyManager$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompactProxyManager"

.field private static sInstance:Lcom/gpc/operations/base/CompatProxyManager;


# instance fields
.field private final listener:Lcom/gpc/operations/base/CompatProxyManager$c;

.field protected outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

.field protected proxy:Lcom/gpc/operations/compact/OperationsCompatProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/gpc/operations/base/CompatProxyManager$a;

    invoke-direct {v0, p0}, Lcom/gpc/operations/base/CompatProxyManager$a;-><init>(Lcom/gpc/operations/base/CompatProxyManager;)V

    iput-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager;->listener:Lcom/gpc/operations/base/CompatProxyManager$c;

    .line 22
    new-instance v0, Lcom/gpc/operations/base/CompatProxyManager$b;

    invoke-direct {v0, p0}, Lcom/gpc/operations/base/CompatProxyManager$b;-><init>(Lcom/gpc/operations/base/CompatProxyManager;)V

    iput-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager;->proxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;
    .locals 2

    const-class v0, Lcom/gpc/operations/base/CompatProxyManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/base/CompatProxyManager;->sInstance:Lcom/gpc/operations/base/CompatProxyManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/base/CompatProxyManager;

    invoke-direct {v1}, Lcom/gpc/operations/base/CompatProxyManager;-><init>()V

    sput-object v1, Lcom/gpc/operations/base/CompatProxyManager;->sInstance:Lcom/gpc/operations/base/CompatProxyManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/operations/base/CompatProxyManager;->sInstance:Lcom/gpc/operations/base/CompatProxyManager;
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
.method public getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager;->proxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    return-object v0
.end method

.method public setProxy(Lcom/gpc/operations/compact/OperationsCompatProxy;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/CompatProxyManager;->outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager;->listener:Lcom/gpc/operations/base/CompatProxyManager$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/gpc/operations/base/CompatProxyManager$c;->a(Lcom/gpc/operations/compact/OperationsCompatProxy;)V

    :cond_0
    return-void
.end method
