.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$4;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->requestAllAgreement()V
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

    .line 521
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$4;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 524
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$4;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-virtual {v0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->retAgreementUrl(Ljava/util/List;)V

    return-void

    .line 527
    :cond_0
    const-string p1, "Agreement-v2"

    const-string v0, "\u672a\u914d\u7f6e\u534f\u8bae\uff0c\u8bf7\u5728\u540e\u53f0\u914d\u7f6e\uff01"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
