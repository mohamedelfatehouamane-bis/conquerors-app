.class public Lcom/gpc/sdk/misc/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

.field public final synthetic b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

.field public final synthetic c:Lcom/gpc/sdk/misc/p;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/p$b;->c:Lcom/gpc/sdk/misc/p;

    iput-object p2, p0, Lcom/gpc/sdk/misc/p$b;->a:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    iput-object p3, p0, Lcom/gpc/sdk/misc/p$b;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/misc/q;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/gpc/util/MD5;

    invoke-direct {p1}, Lcom/gpc/util/MD5;-><init>()V

    iget-object v0, p0, Lcom/gpc/sdk/misc/p$b;->a:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/misc/q;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "RealNameVerificationCacheService"

    const-string v0, "use cache"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/misc/p$b;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/misc/q;->c()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/p$b;->c:Lcom/gpc/sdk/misc/p;

    iget-object v0, p0, Lcom/gpc/sdk/misc/p$b;->a:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    iget-object v1, p0, Lcom/gpc/sdk/misc/p$b;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-virtual {p1, v0, p2, v1}, Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    return-void
.end method
