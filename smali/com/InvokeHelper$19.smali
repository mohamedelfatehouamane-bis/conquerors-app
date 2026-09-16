.class Lcom/InvokeHelper$19;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->setAdmobUnitID(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$placementID:Ljava/lang/String;

.field final synthetic val$unitID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/InvokeHelper$19;->val$unitID:Ljava/lang/String;

    iput-object p2, p0, Lcom/InvokeHelper$19;->val$placementID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 536
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    iget-object v1, p0, Lcom/InvokeHelper$19;->val$unitID:Ljava/lang/String;

    iget-object v2, p0, Lcom/InvokeHelper$19;->val$placementID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igg/android/conquerors/col;->setAdmobUnitID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
