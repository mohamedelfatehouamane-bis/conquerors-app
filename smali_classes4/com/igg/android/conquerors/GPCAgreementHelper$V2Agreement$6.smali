.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->updateUserAgreementConsent([Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

.field final synthetic val$lstAgreeCpy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    iput-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;->val$lstAgreeCpy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Lcom/gpc/sdk/error/GPCException;)V
    .locals 5

    .line 580
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    .line 581
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v1

    const-string v2, "Agreement-v2"

    if-nez v1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u540c\u610f\u9879\u5931\u8d25"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;->val$lstAgreeCpy:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 587
    const-string v4, "GOOGLE_ANALYTICS_SDK"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 589
    :goto_0
    invoke-static {v3, v3, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    .line 591
    :goto_1
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u540c\u610f\u9879"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 595
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 597
    :goto_2
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jniCallback;->retUpdateUserAgreementConsent(I)V

    return-void

    .line 599
    :cond_3
    const-string p1, "GPCAgreementHelper.mGameInstance == null"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
