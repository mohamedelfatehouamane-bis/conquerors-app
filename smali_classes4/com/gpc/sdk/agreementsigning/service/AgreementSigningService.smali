.class public interface abstract Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract requestAssignedAgreementsForSetting(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
.end method

.method public abstract requestAssignedAgreementsForSigned(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
.end method

.method public abstract requestGuardianVerificationState(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
.end method

.method public abstract requestStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end method

.method public abstract sign(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract signKRSpecialConditions(Ljava/lang/String;Ljava/util/List;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;I",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract terminate(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
.end method
