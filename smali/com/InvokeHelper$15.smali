.class Lcom/InvokeHelper$15;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->agreeAgreementV2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 437
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV2()Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->agreeAgreement()V

    return-void
.end method
