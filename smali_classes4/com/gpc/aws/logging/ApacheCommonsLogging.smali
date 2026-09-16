.class public Lcom/gpc/aws/logging/ApacheCommonsLogging;
.super Ljava/lang/Object;
.source "ApacheCommonsLogging.java"

# interfaces
.implements Lcom/gpc/aws/logging/Log;


# instance fields
.field private level:Lcom/gpc/aws/logging/LogFactory$Level;

.field private log:Lorg/apache/commons/logging/Log;

.field private logClass:Ljava/lang/Class;

.field private logString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->level:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 39
    iput-object p1, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->logClass:Ljava/lang/Class;

    .line 40
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->level:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 47
    iput-object p1, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->logString:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private getLevel()Lcom/gpc/aws/logging/LogFactory$Level;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->level:Lcom/gpc/aws/logging/LogFactory$Level;

    if-eqz v0, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-static {}, Lcom/gpc/aws/logging/LogFactory;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->DEBUG:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->DEBUG:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->ERROR:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 247
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->ERROR:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 248
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->INFO:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->INFO:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->DEBUG:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->ERROR:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->INFO:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->TRACE:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->WARN:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setLevel(Lcom/gpc/aws/logging/LogFactory$Level;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->level:Lcom/gpc/aws/logging/LogFactory$Level;

    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->TRACE:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->TRACE:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->WARN:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gpc/aws/logging/ApacheCommonsLogging;->getLevel()Lcom/gpc/aws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->WARN:Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/gpc/aws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
