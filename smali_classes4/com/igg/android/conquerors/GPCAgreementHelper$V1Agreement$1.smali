.class Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->initStatusRequest(Lcom/igg/android/conquerors/col;)V
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

    .line 637
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    iput-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V
    .locals 7

    .line 640
    const-string p1, "requestStatus onResponse"

    const-string v0, "Agreement-v1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 644
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    const/4 v1, 0x2

    .line 645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 646
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v3

    .line 645
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 644
    invoke-virtual {p2, v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->prepareFileToBeSigned(Ljava/util/List;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fputmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    .line 647
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-static {p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 648
    const-string p1, "agreementSigningFile != null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-static {p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getAgreements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 651
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/String;

    .line 652
    iget-object v2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-static {v2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v6

    .line 653
    iget-object v2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-static {v2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedCaption()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    .line 654
    iget-object v2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-static {v2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->-$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 657
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 658
    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 v3, v1, 0x1

    .line 659
    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    add-int/lit8 v3, v1, 0x2

    .line 660
    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getLocalizedName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    add-int/2addr v1, v0

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jniCallback;->retShowAgreement([Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->requestAgreement(Lcom/igg/android/conquerors/col;)V

    return-void

    .line 668
    :cond_1
    const-string p1, "agreementSigningFile == null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jniCallback;->retNotShowAgreement()V

    .line 673
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;->val$gameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->requestAgreement(Lcom/igg/android/conquerors/col;)V

    return-void
.end method
