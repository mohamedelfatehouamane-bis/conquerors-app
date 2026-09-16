.class public Lcom/gpc/operations/migrate/utils/modules/log/LogModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/modules/log/LogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/log/LogModule;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/log/LogModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/operations/migrate/notification/Notification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "LogModule"

    const-string v1, "rec Primary AppConfig notify."

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->parseFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;->profiling:Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    :cond_0
    return-void
.end method
