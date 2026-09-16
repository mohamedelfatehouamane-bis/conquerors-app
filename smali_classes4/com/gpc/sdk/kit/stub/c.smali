.class public Lcom/gpc/sdk/kit/stub/c;
.super Lcom/gpc/sdk/kit/stub/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/kit/stub/c$d;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "LogStub"

.field public static final e:Ljava/lang/String; = "last_upload_time_"

.field public static final f:I = 0x493e0


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/kit/stub/a;-><init>()V

    .line 26
    new-instance v0, Lcom/gpc/sdk/kit/stub/c$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/kit/stub/c$a;-><init>(Lcom/gpc/sdk/kit/stub/c;)V

    iput-object v0, p0, Lcom/gpc/sdk/kit/stub/c;->c:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;)J
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;Lcom/gpc/sdk/kit/stub/c$d;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;Lcom/gpc/sdk/kit/stub/c$d;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/kit/stub/c;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/c;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/c;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 3

    .line 7
    invoke-static {}, Lcom/gpc/sdk/kit/stub/f;->a()Lcom/gpc/sdk/kit/stub/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last_upload_time_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/kit/stub/f;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/kit/stub/c$d;)V
    .locals 3

    .line 8
    iget-object v0, p2, Lcom/gpc/sdk/kit/stub/c$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 11
    new-instance v2, Lcom/gpc/sdk/kit/stub/c$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/gpc/sdk/kit/stub/c$b;-><init>(Lcom/gpc/sdk/kit/stub/c;Lcom/gpc/sdk/kit/stub/c$d;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;Ljava/io/File;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/gpc/sdk/incident/GPCIncident;

    invoke-direct {v0}, Lcom/gpc/sdk/incident/GPCIncident;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setUserId(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setGid(Ljava/lang/String;)V

    .line 15
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setDeviceMode(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setDeviceId(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/gpc/util/DeviceUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setGameVersion(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/incident/GPCIncident;->setDevicePlatform(I)V

    .line 19
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/incident/GPCIncident;->setPostFile(Ljava/io/File;)V

    .line 20
    new-instance p1, Lcom/gpc/sdk/incident/GPCIncidentCollector;

    invoke-direct {p1}, Lcom/gpc/sdk/incident/GPCIncidentCollector;-><init>()V

    .line 21
    new-instance p2, Lcom/gpc/sdk/kit/stub/c$c;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/kit/stub/c$c;-><init>(Lcom/gpc/sdk/kit/stub/c;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/incident/GPCIncidentCollector;->saveIncident(Lcom/gpc/sdk/incident/GPCIncident;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 22
    invoke-static {p1, p2}, Lcom/gpc/util/FileUtils;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LogStub"

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    .line 32
    const-string p1, "destPath not exist any files."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_1
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p1, v0

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 37
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v2, v3}, Lcom/gpc/util/FileUtils;->zip(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zip "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/gpc/sdk/kit/stub/f;->a()Lcom/gpc/sdk/kit/stub/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last_upload_time_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/kit/stub/f;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/a;->onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/c;->b:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/kit/stub/c;->c:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "upload_vip_log"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/c;->c:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "upload_vip_log"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/kit/stub/c;->b:Landroid/content/Context;

    return-void
.end method

.method public onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 0

    return-void
.end method
