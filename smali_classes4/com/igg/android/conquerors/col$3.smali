.class Lcom/igg/android/conquerors/col$3;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->closeGameActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    const-string v0, "log---"

    const-string v1, "closeGameActive()2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->finish()V

    const/4 v0, 0x0

    .line 484
    sput-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const/4 v0, 0x0

    .line 485
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
