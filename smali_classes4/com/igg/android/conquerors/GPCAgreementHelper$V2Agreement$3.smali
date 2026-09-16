.class Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->agreeAgreement()V
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

    .line 502
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 505
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSigned Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Agreement-v2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-static {p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->-$$Nest$mrequestEUStatus(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    .line 509
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->requestAllAgreement()V

    return-void
.end method
