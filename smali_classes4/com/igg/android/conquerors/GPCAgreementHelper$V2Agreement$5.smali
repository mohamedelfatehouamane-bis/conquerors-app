.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->requestAssignedAgreements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->-$$Nest$fputmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    .line 547
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementOptions()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->-$$Nest$mretShowAssignedAgreement(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 549
    :cond_0
    const-string p1, "Agreement-v2"

    const-string p2, "\u672a\u914d\u7f6e\u534f\u8bae\uff0c\u8bf7\u5728\u540e\u53f0\u914d\u7f6e\uff01"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
