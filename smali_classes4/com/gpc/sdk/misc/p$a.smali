.class public Lcom/gpc/sdk/misc/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/CacheUtils$ReadCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/p;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/p$a;->b:Lcom/gpc/sdk/misc/p;

    iput-object p2, p0, Lcom/gpc/sdk/misc/p$a;->a:Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "read cache, data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealNameVerificationCacheService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exforReadCache:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$a;->a:Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;

    invoke-interface {p2, p1, v2}, Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/misc/q;)V

    return-void

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/gpc/sdk/misc/q;->a(Ljava/lang/String;)Lcom/gpc/sdk/misc/q;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    const-string p2, "cache data format error."

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$a;->a:Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;

    invoke-interface {p2, p1, v2}, Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/misc/q;)V

    return-void

    .line 13
    :cond_1
    const-string v0, "cache data format success, return."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$a;->a:Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/misc/q;)V

    return-void
.end method
