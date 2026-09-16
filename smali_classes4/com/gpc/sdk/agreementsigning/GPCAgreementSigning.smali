.class public interface abstract Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
.end method

.method public abstract requestGuardianVerificationState(Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
.end method

.method public abstract requestStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end method

.method public abstract setCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
.end method

.method public abstract setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V
.end method

.method public abstract sign(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract signKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract signing()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;
.end method

.method public abstract termination()Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;
.end method
