.class Lcom/InvokeHelper$17;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->updateAgreementConsentV2([Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$agree:[Ljava/lang/String;

.field final synthetic val$disagree:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/InvokeHelper$17;->val$agree:[Ljava/lang/String;

    iput-object p2, p0, Lcom/InvokeHelper$17;->val$disagree:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 460
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV2()Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    move-result-object v0

    iget-object v1, p0, Lcom/InvokeHelper$17;->val$agree:[Ljava/lang/String;

    iget-object v2, p0, Lcom/InvokeHelper$17;->val$disagree:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->updateUserAgreementConsent([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
