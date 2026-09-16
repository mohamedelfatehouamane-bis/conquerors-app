.class Lcom/igg/android/conquerors/col$14;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 1073
    iput-object p1, p0, Lcom/igg/android/conquerors/col$14;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 2

    .line 1076
    sget-object p1, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    if-ne p2, p1, :cond_1

    .line 1077
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_2

    .line 1079
    :try_start_0
    iget-object p1, p0, Lcom/igg/android/conquerors/col$14;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fputmlRequestTime(Lcom/igg/android/conquerors/col;J)V

    .line 1080
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 1083
    :cond_0
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x6e

    invoke-static {p1, p2, v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1089
    :cond_1
    sget-object p1, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    if-ne p2, p1, :cond_2

    .line 1091
    invoke-static {}, Lcom/igg/android/conquerors/col;->closeGameActive()V

    :cond_2
    :goto_0
    return-void
.end method
