.class public Lcom/gpc/sdk/misc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "RealNameVerificationResultBackup"


# instance fields
.field public a:J

.field public b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/gpc/sdk/misc/q;
    .locals 4

    .line 4
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-direct {v0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;-><init>()V

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p0, "state"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 7
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationDenied:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 13
    :cond_2
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_3

    .line 14
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 15
    :cond_3
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_4

    .line 16
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 17
    :cond_4
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnknown:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_5

    .line 18
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    .line 23
    :goto_0
    const-string p0, "juvenilesLevel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setJuvenilesLevel(I)V

    .line 24
    const-string p0, "pi"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setPi(Ljava/lang/String;)V

    .line 25
    const-string p0, "isMinor"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setMinor(Z)V

    .line 26
    const-string p0, "duration"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setDuration(J)V

    .line 27
    const-string p0, "expires_at"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setExpiresAt(J)V

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setHoliday(Z)V

    .line 31
    new-instance p0, Lcom/gpc/sdk/misc/q;

    invoke-direct {p0}, Lcom/gpc/sdk/misc/q;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    .line 33
    const-string v0, "backupsTimeStamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gpc/sdk/misc/q;->a:J

    .line 34
    const-string v0, "accesskey_md5"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    const-string v0, "RealNameVerificationResultBackup"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/misc/q;->a:J

    return-void
.end method

.method public a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/misc/q;->a:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duration:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealNameVerificationResultBackup"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "current TimeMillis:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ExpiresAt:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getExpiresAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentAccessKeyMD5:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cache accessKeyMD5:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v4}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getExpiresAt()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "state"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "pi"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getPi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "juvenilesLevel"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getJuvenilesLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v1, "isMinor"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->isMinor()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    const-string v1, "duration"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    const-string v1, "expires_at"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->b:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getExpiresAt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    const-string v1, "accesskey_md5"

    iget-object v2, p0, Lcom/gpc/sdk/misc/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "backupsTimeStamp"

    iget-wide v2, p0, Lcom/gpc/sdk/misc/q;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    const-string v1, "RealNameVerificationResultBackup"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
