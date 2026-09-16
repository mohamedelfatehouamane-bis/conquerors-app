.class Lcom/InvokeHelper$12;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->agreeAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 404
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV1()Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->agreeAgreement()V

    return-void
.end method
