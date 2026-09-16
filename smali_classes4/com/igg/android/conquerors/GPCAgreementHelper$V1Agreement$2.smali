.class Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->requestAgreement(Lcom/igg/android/conquerors/col;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

.field final synthetic val$gameInstance:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;Lcom/igg/android/conquerors/col;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    iput-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V
    .locals 4

    .line 683
    const-string v0, "requestPolicies onResponse"

    const-string v1, "Agreement-v1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 687
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 689
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 690
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 692
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 693
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 694
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    .line 695
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 698
    :cond_1
    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jniCallback;->retAgreementUrl([Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 701
    :cond_3
    const-string p1, "\u672a\u914d\u7f6e\u534f\u8bae\uff0c\u8bf7\u5728\u540e\u53f0\u914d\u7f6e\uff01"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
