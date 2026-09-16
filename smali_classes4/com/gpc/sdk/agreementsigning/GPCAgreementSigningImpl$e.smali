.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->checkCOPPAStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string v0, "GPCAgreementSigning"

    const-string v1, "get ssotoken failed."

    invoke-static {v0, v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "20"

    const-string v2, "321105"

    invoke-static {v2, v0, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;

    invoke-virtual {p1, p2, v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V

    return-void
.end method
