.class public Lcom/gpc/sdk/misc/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/service/VerificationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/q;

.field public final synthetic b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

.field public final synthetic c:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

.field public final synthetic d:Lcom/gpc/sdk/misc/p;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/p$d;->d:Lcom/gpc/sdk/misc/p;

    iput-object p2, p0, Lcom/gpc/sdk/misc/p$d;->a:Lcom/gpc/sdk/misc/q;

    iput-object p3, p0, Lcom/gpc/sdk/misc/p$d;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    iput-object p4, p0, Lcom/gpc/sdk/misc/p$d;->c:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "RealNameVerificationCacheService"

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "read cache"

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$d;->a:Lcom/gpc/sdk/misc/q;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$d;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$d;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/q;->c()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/misc/p$d;->a:Lcom/gpc/sdk/misc/q;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/q;->b()J

    move-result-wide v1

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "verificationResult:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$d;->d:Lcom/gpc/sdk/misc/p;

    iget-object v3, p0, Lcom/gpc/sdk/misc/p$d;->c:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-static {v0, p2, v3}, Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$d;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void
.end method
