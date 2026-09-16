.class public interface abstract Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkAgreementsPendingSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end method

.method public abstract checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
.end method

.method public abstract restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
.end method

.method public abstract restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
.end method

.method public abstract signEU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract signKO(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract signNormal(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract updateCMP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method
