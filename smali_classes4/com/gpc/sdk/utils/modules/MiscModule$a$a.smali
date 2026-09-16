.class public Lcom/gpc/sdk/utils/modules/MiscModule$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/service/MessageMarkingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/MiscModule$a;->onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/MiscModule$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/MiscModule$a;Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/MiscModule$a$a;->b:Lcom/gpc/sdk/utils/modules/MiscModule$a;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/MiscModule$a$a;->a:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageMarkingFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    const-string v0, "PushModule"

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "onMessageRead success"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/MiscModule$a$a;->a:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

    const-string v1, "legacy_task_finish"

    invoke-direct {p1, v1, v0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void

    .line 6
    :cond_0
    const-string p1, "onMessageRead failed"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
