.class Lcom/igg/android/conquerors/col$4;
.super Landroid/content/BroadcastReceiver;
.source "col.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/col;
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

    .line 612
    iput-object p1, p0, Lcom/igg/android/conquerors/col$4;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 616
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 618
    iget-object p2, p0, Lcom/igg/android/conquerors/col$4;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {p2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetmHandleAlarmReceiver(Lcom/igg/android/conquerors/col;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    invoke-static {v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 623
    :goto_0
    sget-object p2, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jniCallback;->onExtraAlarmChangeCallback(I)V

    :cond_1
    return-void
.end method
