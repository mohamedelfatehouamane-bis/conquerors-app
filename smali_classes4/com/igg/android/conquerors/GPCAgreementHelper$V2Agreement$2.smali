.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$2;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->requestEUStatus()V
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

    .line 150
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$2;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestEUStatus: exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Agreement-v2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 175
    invoke-static {p1}, Lcom/ThirdPartySDK;->setEU(Z)V

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V
    .locals 4
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

    const/4 p3, 0x0

    .line 153
    const-string v0, "Agreement-v2"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestEUStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 159
    const-string v1, "GOOGLE_ANALYTICS_SDK"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 161
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestEUStatus, inSetting"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p3, v3, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    .line 163
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getLocalizedForEntryBtn()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 164
    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$2;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    iget-object p2, p2, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getLocalizedForEntryBtn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jniCallback;->setProtocolEntry(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 167
    :cond_3
    const-string p1, "\u672a\u914d\u7f6e\u534f\u8bae\uff0c\u8bf7\u5728\u540e\u53f0\u914d\u7f6e\uff01"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p3}, Lcom/ThirdPartySDK;->setEU(Z)V

    return-void
.end method
