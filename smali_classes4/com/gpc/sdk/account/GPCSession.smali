.class public Lcom/gpc/sdk/account/GPCSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;,
        Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;,
        Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GPCSession"


# instance fields
.field private accessKey:Ljava/lang/String;

.field private accountNewlyCreated:Z

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasBind:Z

.field private loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field private ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

.field private thirdPlatformAccessKey:Ljava/lang/String;

.field private thirdPlatformId:Ljava/lang/String;

.field private timeToVerify:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSession"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSession"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/account/GPCSession;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    return-object p1
.end method


# virtual methods
.method public createDataStruct()Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    invoke-direct {v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->userId:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->toPersistenceJson()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized dumpToLogCat()V
    .locals 9

    const-string v0, "Session accountNewlyCreated: "

    const-string v1, "Session thirdPlatformAccessKey: "

    const-string v2, "Session thirdPlatformId: "

    const-string v3, "Session bind state: "

    const-string v4, "Session accessKey timeToVerify: "

    const-string v5, "Session accessKey: "

    const-string v6, "Session Id: "

    const-string v7, "Session loginType: "

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gpc/sdk/account/GPCSession;->loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GPCSession"

    invoke-static {v8, v7}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gpc/sdk/account/GPCSession;->userId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GPCSession"

    invoke-static {v7, v6}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gpc/sdk/account/GPCSession;->accessKey:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GPCSession"

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gpc/sdk/account/GPCSession;->timeToVerify:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GPCSession"

    invoke-static {v5, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/gpc/sdk/account/GPCSession;->hasBind:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPCSession"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCSession"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformAccessKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCSession"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/gpc/sdk/account/GPCSession;->accountNewlyCreated:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSession"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAccesskey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->accessKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->extras:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getThirdPlatformAccessKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformAccessKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getThirdPlatformId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTimeToVerify()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->timeToVerify:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getUserId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->userId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWebSSOToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountNewlyCreated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/account/GPCSession;->accountNewlyCreated:Z

    return v0
.end method

.method public declared-synchronized isHasBind()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/gpc/sdk/account/GPCSession;->hasBind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isSessionExpired()Z
    .locals 6

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 6
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 11
    const-string v2, "GPCSession"

    invoke-static {v2, v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 1
    const-string v0, "In isAcceptable"

    const-string v1, "GPCSession"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->accessKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    const-string v2, "Session is valid"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    const-string v2, "Session is invalid"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_1
    const-string v2, "Out isAcceptable"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public parseDataStruct(Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setAccesskey(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->createFormPersistenceJson(Ljava/lang/String;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    :cond_0
    return-void
.end method

.method public declared-synchronized requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/account/GPCSession$b;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/GPCSession$b;-><init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/account/GPCSession$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/GPCSession$a;-><init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V
    .locals 3

    const-string v0, "cached Web SSO Token is valid. ExpiresAt:"

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "GPCSession"

    const-string v2, "Web SSO Token memory cache exist."

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    invoke-virtual {v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getExpiresAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCSession"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;

    invoke-direct {v0}, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession;->accessKey:Ljava/lang/String;

    new-instance v2, Lcom/gpc/sdk/account/GPCSession$c;

    invoke-direct {v2, p0, p2, p1}, Lcom/gpc/sdk/account/GPCSession$c;-><init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/account/service/GPCSessionService;->requestSSOToken(Ljava/lang/String;Lcom/gpc/sdk/account/service/RequestSSOTokenListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAccesskey(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->accessKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAccountNewlyCreated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/account/GPCSession;->accountNewlyCreated:Z

    return-void
.end method

.method public declared-synchronized setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->extras:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHasBind(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/gpc/sdk/account/GPCSession;->hasBind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setThirdPlatformAccessKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformAccessKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setThirdPlatformId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->thirdPlatformId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTimeToVerify(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->timeToVerify:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->userId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public upateSession(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setUserId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setAccesskey(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setTimeToVerify(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setHasBind(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformAccessKey(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setExtra(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCSession;->setAccountNewlyCreated(Z)V

    .line 10
    iget-object p1, p1, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession;->ssoToken:Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    return-void
.end method
