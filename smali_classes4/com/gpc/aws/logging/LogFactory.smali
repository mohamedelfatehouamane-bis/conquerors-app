.class public Lcom/gpc/aws/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/logging/LogFactory$Level;
    }
.end annotation


# static fields
.field private static final APACHE_COMMONS_LOGGING_LOGFACTORY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field private static final TAG:Ljava/lang/String; = "LogFactory"

.field private static globalLogLevel:Lcom/gpc/aws/logging/LogFactory$Level;

.field private static logMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/aws/logging/Log;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/aws/logging/LogFactory;->logMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkApacheCommonsLoggingExists()Z
    .locals 3

    const/4 v0, 0x0

    .line 83
    :try_start_0
    const-string v1, "org.apache.commons.logging.LogFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/gpc/aws/logging/LogFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v0
.end method

.method public static getLevel()Lcom/gpc/aws/logging/LogFactory$Level;
    .locals 1

    .line 78
    sget-object v0, Lcom/gpc/aws/logging/LogFactory;->globalLogLevel:Lcom/gpc/aws/logging/LogFactory$Level;

    return-object v0
.end method

.method public static declared-synchronized getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;
    .locals 1

    const-class v0, Lcom/gpc/aws/logging/LogFactory;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/aws/logging/LogFactory;->getTruncatedLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;
    .locals 6

    const-class v0, Lcom/gpc/aws/logging/LogFactory;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/gpc/aws/logging/LogFactory;->getTruncatedLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    sget-object v1, Lcom/gpc/aws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/aws/logging/Log;

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/gpc/aws/logging/LogFactory;->checkApacheCommonsLoggingExists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 59
    :try_start_1
    new-instance v2, Lcom/gpc/aws/logging/ApacheCommonsLogging;

    invoke-direct {v2, p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    sget-object v1, Lcom/gpc/aws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 62
    :goto_0
    :try_start_3
    sget-object v3, Lcom/gpc/aws/logging/LogFactory;->TAG:Ljava/lang/String;

    const-string v4, "Could not create log from org.apache.commons.logging.LogFactory"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v1, v2

    :cond_0
    if-nez v1, :cond_1

    .line 66
    new-instance v1, Lcom/gpc/aws/logging/AndroidLog;

    invoke-direct {v1, p0}, Lcom/gpc/aws/logging/AndroidLog;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/gpc/aws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static getTruncatedLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/gpc/aws/logging/LogFactory;->checkApacheCommonsLoggingExists()Z

    move-result v0

    const-string v2, "Truncating log tag length as it exceed 23, the limit imposed by Android on certain API Levels"

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/gpc/aws/logging/ApacheCommonsLogging;

    sget-object v3, Lcom/gpc/aws/logging/LogFactory;->TAG:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/gpc/aws/logging/ApacheCommonsLogging;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {v0, v2}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/gpc/aws/logging/LogFactory;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static setLevel(Lcom/gpc/aws/logging/LogFactory$Level;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/gpc/aws/logging/LogFactory;->globalLogLevel:Lcom/gpc/aws/logging/LogFactory$Level;

    return-void
.end method
