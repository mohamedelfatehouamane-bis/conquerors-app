.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->setCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
