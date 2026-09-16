.class public Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/operations/migrate/notification/Notification;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;)Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTaskPersistence;->remove(Lcom/gpc/operations/migrate/utils/modules/legacytask/LegacyTask;)V

    :cond_0
    return-void
.end method
