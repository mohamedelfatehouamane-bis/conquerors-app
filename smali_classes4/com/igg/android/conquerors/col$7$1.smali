.class Lcom/igg/android/conquerors/col$7$1;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col$7;->onComplete(Lcom/gpc/sdk/error/GPCException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igg/android/conquerors/col$7;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col$7;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/igg/android/conquerors/col$7$1;->this$1:Lcom/igg/android/conquerors/col$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadAppConf()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/igg/android/conquerors/col$7$1;->this$1:Lcom/igg/android/conquerors/col$7;

    iget-object v0, v0, Lcom/igg/android/conquerors/col$7;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$mloadConfig(Lcom/igg/android/conquerors/col;)V

    return-void
.end method
