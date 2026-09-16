.class public Lcom/gpc/operations/base/CompatProxyManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/CompatProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/base/CompatProxyManager;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/CompatProxyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/CompatProxyManager$b;->a:Lcom/gpc/operations/base/CompatProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager$b;->a:Lcom/gpc/operations/base/CompatProxyManager;

    iget-object v0, v0, Lcom/gpc/operations/base/CompatProxyManager;->outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "CompactProxyManager"

    const-string v2, "proxy getGameId error."

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager$b;->a:Lcom/gpc/operations/base/CompatProxyManager;

    iget-object v0, v0, Lcom/gpc/operations/base/CompatProxyManager;->outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "CompactProxyManager"

    const-string v2, "proxy getSSOTokenForWeb error."

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    const-string v0, "-1"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager$b;->a:Lcom/gpc/operations/base/CompatProxyManager;

    iget-object v0, v0, Lcom/gpc/operations/base/CompatProxyManager;->outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSecretKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "CompactProxyManager"

    const-string v2, "proxy getSecretKey error."

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/base/CompatProxyManager$b;->a:Lcom/gpc/operations/base/CompatProxyManager;

    iget-object v0, v0, Lcom/gpc/operations/base/CompatProxyManager;->outsideProxy:Lcom/gpc/operations/compact/OperationsCompatProxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "CompactProxyManager"

    const-string v2, "proxy getUserId error."

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    const-string v0, ""

    return-object v0
.end method
