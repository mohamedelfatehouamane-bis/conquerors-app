.class Lcom/InvokeHelper$14;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->presignedAgreementV2(I[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$agree:[Ljava/lang/String;

.field final synthetic val$disagree:[Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput p1, p0, Lcom/InvokeHelper$14;->val$type:I

    iput-object p2, p0, Lcom/InvokeHelper$14;->val$agree:[Ljava/lang/String;

    iput-object p3, p0, Lcom/InvokeHelper$14;->val$disagree:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 426
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV2()Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    move-result-object v0

    iget v1, p0, Lcom/InvokeHelper$14;->val$type:I

    iget-object v2, p0, Lcom/InvokeHelper$14;->val$agree:[Ljava/lang/String;

    iget-object v3, p0, Lcom/InvokeHelper$14;->val$disagree:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->presignedAgreement(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
