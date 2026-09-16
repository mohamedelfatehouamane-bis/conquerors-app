.class public Lcom/gpc/sdk/utils/common/GPCAppProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/common/GPCAppProfile$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCAppProfile"


# instance fields
.field private initializedJustNow:Z

.field private storage:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "app_profile"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method private initializeCreatedAtField()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->initializedJustNow:Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v2, v1, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->initializedJustNow:Z

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v2, "FIRST_START_UP"

    invoke-direct {v1, v2, p0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void
.end method


# virtual methods
.method public getCreateAtTime()Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v2, "created_at"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "GPCAppProfile"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastLoginTime()Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v2, "last_logined_time"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "GPCAppProfile"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/GPCAppProfile;->initializeCreatedAtField()V

    .line 3
    const-string v0, "GPCAppProfile"

    const-string v1, "Finish initializing"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInitializedJustNow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->initializedJustNow:Z

    return v0
.end method

.method public setFieldWithEvents(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/common/GPCAppProfile$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v1, p1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p3, v0, p2}, Lcom/gpc/sdk/utils/common/GPCAppProfile$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/GPCAppProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p3, p2}, Lcom/gpc/sdk/utils/common/GPCAppProfile$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public updateLastLoginTime()V
    .locals 3

    .line 1
    const-string v0, "GPCAppProfile"

    const-string v1, "The last start time is updated"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/gpc/sdk/utils/common/GPCAppProfile$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/GPCAppProfile$a;-><init>(Lcom/gpc/sdk/utils/common/GPCAppProfile;)V

    const-string v2, "last_logined_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/gpc/sdk/utils/common/GPCAppProfile;->setFieldWithEvents(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/common/GPCAppProfile$b;)V

    return-void
.end method
