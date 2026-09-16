.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->sign(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] sign v2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCAgreementSigning"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/d;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/misc/d;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    const-string v0, "[CMP] sign v2:onSigned for the condition 1."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    const-string v1, "[CMP] sign v2:isSyncDevice."

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/misc/d;->a(Z)V

    .line 17
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Z)V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/misc/d;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    const-string v0, "[CMP] sign v2:isSyncUser."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "[CMP] sign v2:onSigned for the condition 3."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    invoke-direct {v2, p0, v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;Lcom/gpc/sdk/account/GPCSession;)V

    invoke-interface {v1, v2}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void

    .line 28
    :cond_4
    :goto_0
    const-string v0, "321001"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
