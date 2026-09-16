.class Lcom/InvokeHelper$23;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->loadRewardedAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adUnitID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lcom/InvokeHelper$23;->val$adUnitID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    iget-object v1, p0, Lcom/InvokeHelper$23;->val$adUnitID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/igg/android/conquerors/col;->loadRewardedAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
