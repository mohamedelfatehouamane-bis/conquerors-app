.class public interface abstract Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
