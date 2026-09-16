.class public interface abstract Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkAgreementsPendingSigning(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
.end method

.method public abstract checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkCOPPAStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
.end method

.method public abstract checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
.end method

.method public abstract presigned(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V
.end method

.method public abstract presignedEUSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract presignedKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;I)V
.end method

.method public abstract requestGuardianVerificationState(Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
.end method

.method public abstract restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
.end method

.method public abstract restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract sign(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end method

.method public abstract updateUserConsent(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation
.end method
