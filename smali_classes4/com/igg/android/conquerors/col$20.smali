.class Lcom/igg/android/conquerors/col$20;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->showAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lcom/igg/android/conquerors/col$20;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 1460
    iget-object v0, p0, Lcom/igg/android/conquerors/col$20;->this$0:Lcom/igg/android/conquerors/col;

    const v1, 0xcb21

    invoke-virtual {v0, p1, v1}, Lcom/igg/android/conquerors/col;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1457
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col$20;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
