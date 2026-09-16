.class Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$3;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->agreeAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$3;->this$0:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 724
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    const-string v0, "Agreement-v1"

    if-eqz p1, :cond_0

    .line 725
    const-string p1, "agreeAgreement success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 727
    :cond_0
    const-string p1, "agreeAgreement failed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
