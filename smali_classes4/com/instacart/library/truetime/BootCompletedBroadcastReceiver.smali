.class public Lcom/instacart/library/truetime/BootCompletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootCompletedBroadcastReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    sget-object p1, Lcom/instacart/library/truetime/BootCompletedBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "---- clearing TrueTime disk cache as we\'ve detected a boot"

    invoke-static {p1, v0}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->clearCachedInfo()V

    :cond_0
    return-void
.end method
