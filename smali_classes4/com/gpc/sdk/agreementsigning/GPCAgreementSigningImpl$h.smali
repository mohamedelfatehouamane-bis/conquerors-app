.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->requestGuardianVerificationState(Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->getChildhood()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    return-void
.end method
