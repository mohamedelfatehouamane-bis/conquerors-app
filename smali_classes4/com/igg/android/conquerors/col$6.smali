.class Lcom/igg/android/conquerors/col$6;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->setPlayerInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/igg/android/conquerors/col$6;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 681
    new-instance v0, Lcom/igg/android/conquerors/col$GameDelegate;

    iget-object v1, p0, Lcom/igg/android/conquerors/col$6;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {v0, v1}, Lcom/igg/android/conquerors/col$GameDelegate;-><init>(Lcom/igg/android/conquerors/col;)V

    .line 682
    iget-object v1, p0, Lcom/igg/android/conquerors/col$6;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_pConfigurationProvider(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/GPCConfigurationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/igg/android/conquerors/col$6;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_pConfigurationProvider(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/GPCConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->setGameDelegate(Lcom/gpc/sdk/GPCGameDelegate;)V

    :cond_0
    return-void
.end method
