.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "GPCAgreementSigning"

    const-string v1, "[CMP] updateUserConsent success."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/misc/d;->b(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/misc/d;->c(Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Z)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
