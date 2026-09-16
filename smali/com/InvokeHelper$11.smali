.class Lcom/InvokeHelper$11;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->showAgreement(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 391
    iput p1, p0, Lcom/InvokeHelper$11;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 393
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV1()Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    move-result-object v0

    iget v1, p0, Lcom/InvokeHelper$11;->val$type:I

    sget-object v2, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1, v2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->showAgreement(ILcom/igg/android/conquerors/col;)V

    return-void
.end method
