.class Lcom/InvokeHelper$13;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->requestAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 415
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV1()Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    move-result-object v0

    sget-object v1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->requestAgreement(Lcom/igg/android/conquerors/col;)V

    return-void
.end method
