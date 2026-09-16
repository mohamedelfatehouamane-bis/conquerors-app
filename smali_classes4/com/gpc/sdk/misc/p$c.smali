.class public Lcom/gpc/sdk/misc/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
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
    iput-object p1, p0, Lcom/gpc/sdk/misc/p$c;->d:Lcom/gpc/sdk/misc/p;

    iput-object p2, p0, Lcom/gpc/sdk/misc/p$c;->a:Lcom/gpc/sdk/misc/q;

    iput-object p3, p0, Lcom/gpc/sdk/misc/p$c;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    iput-object p4, p0, Lcom/gpc/sdk/misc/p$c;->c:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string p2, "RealNameVerificationCacheService"

    const-string v0, "SSOToken is null"

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "290105"

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$c;->a:Lcom/gpc/sdk/misc/q;

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$c;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    const-wide/16 v1, 0x0

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/p$c;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-virtual {p2}, Lcom/gpc/sdk/misc/q;->c()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    move-result-object p2

    iget-object v1, p0, Lcom/gpc/sdk/misc/p$c;->a:Lcom/gpc/sdk/misc/q;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/q;->b()J

    move-result-wide v1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/gpc/sdk/realname/GPCVerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/misc/p$c;->d:Lcom/gpc/sdk/misc/p;

    iget-object v0, p0, Lcom/gpc/sdk/misc/p$c;->c:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    iget-object v1, p0, Lcom/gpc/sdk/misc/p$c;->a:Lcom/gpc/sdk/misc/q;

    iget-object v2, p0, Lcom/gpc/sdk/misc/p$c;->b:Lcom/gpc/sdk/realname/GPCVerificationStateListener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/misc/p;Ljava/lang/String;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    return-void
.end method
