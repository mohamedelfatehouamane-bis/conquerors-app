.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->updateUserConsent(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    iput-object p3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "320205"

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    const-string p2, "GPCAgreementSigning"

    const-string v0, "[CMP] updateUserConsent webSSOToken error."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;->c:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/gpc/sdk/misc/c;->updateCMP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method
