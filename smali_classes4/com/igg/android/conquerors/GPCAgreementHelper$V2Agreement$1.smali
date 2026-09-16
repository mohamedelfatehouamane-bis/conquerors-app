.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->checkAgreementsPendingSigning(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;)V
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

    .line 97
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 121
    const-string v0, "Agreement-v2"

    const-string v1, "onFailure"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-static {v0, v1, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    .line 124
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-virtual {v0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->showCheckAgreementsPendingSigningErrorDialog(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    const-string v0, "Agreement-v2"

    if-nez p1, :cond_0

    .line 101
    const-string p1, "onSuccess status == null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 106
    const-string v1, "\u5f53\u524d\u60c5\u51b5\uff1a\u534f\u8bae\u5df2\u7b7e\u7f72\uff0c\u65e0\u9700\u5f39\u7a97"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 108
    const-string v1, "\u5f53\u524d\u60c5\u51b5\uff1a\u534f\u8bae\u672a\u7b7e\u7f72\uff0c\u663e\u793a\u534f\u8bae\u5f39\u7a97"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 110
    const-string v1, "\u5f53\u524d\u60c5\u51b5\uff1a\u534f\u8bae\u5df2\u7b7e\u7f72/\u4eca\u65e5\u65e0\u9700\u8bf7\u6c42\uff0c\u65e0\u9700\u5f39\u7a97"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_3
    const-string v1, "\u5f53\u524d\u60c5\u51b5\uff1a\u672a\u77e5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-static {v0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->-$$Nest$mshowCheckAgreementsPendingSigningDialog(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
