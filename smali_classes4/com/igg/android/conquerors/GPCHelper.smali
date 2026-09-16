.class public Lcom/igg/android/conquerors/GPCHelper;
.super Ljava/lang/Object;
.source "GPCHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCHelper-"

.field private static mGameInstance:Lcom/igg/android/conquerors/col;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckUploadAvatar(Ljava/lang/String;)V
    .locals 3

    .line 150
    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x96

    .line 154
    sput v0, Lcom/gpc/resourcestorage/configuration/OPSGameStorageConfiguration$AvatarUploadConfiguration;->PHOTO_SIZE:I

    .line 156
    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-static {v0, v1, p0}, Lcom/gpc/resourcestorage/OPSResourceStorage;->getUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;Ljava/lang/String;)Lcom/gpc/resourcestorage/OPSResourceUploader;

    move-result-object p0

    if-nez p0, :cond_3

    .line 159
    sget-object p0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/jniCallback;->retUploadAvatarState(ILjava/lang/String;I)V

    return-void

    .line 163
    :cond_3
    new-instance v0, Lcom/igg/android/conquerors/GPCHelper$2;

    invoke-direct {v0}, Lcom/igg/android/conquerors/GPCHelper$2;-><init>()V

    invoke-interface {p0, v0}, Lcom/gpc/resourcestorage/OPSResourceUploader;->setResourceUploadListener(Lcom/gpc/resourcestorage/listener/ResourceUploadListener;)V

    .line 248
    invoke-interface {p0}, Lcom/gpc/resourcestorage/OPSResourceUploader;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static DownloadAvatar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 258
    invoke-static {}, Lcom/gpc/resourcestorage/OPSResourceStorage;->getDownloader()Lcom/gpc/resourcestorage/OPSResourceDownloader;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/igg/android/conquerors/GPCHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/igg/android/conquerors/GPCHelper$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceDownloader;->setResourceDownloadListener(Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;)V

    .line 306
    invoke-interface {v0, p0, p1}, Lcom/gpc/resourcestorage/OPSResourceDownloader;->start(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Init()V
    .locals 2

    .line 311
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCHelper$4;

    invoke-direct {v1}, Lcom/igg/android/conquerors/GPCHelper$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/Kungfu;->prepareInGameReporting(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    .line 320
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCHelper$5;

    invoke-direct {v1}, Lcom/igg/android/conquerors/GPCHelper$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/Kungfu;->prepareRiskManagement(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    return-void
.end method

.method public static UploadAvatar()V
    .locals 4

    .line 44
    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x96

    .line 48
    sput v0, Lcom/gpc/resourcestorage/configuration/OPSGameStorageConfiguration$AvatarUploadConfiguration;->PHOTO_SIZE:I

    .line 50
    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-static {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceStorage;->getUploader(Landroid/app/Activity;Lcom/gpc/resourcestorage/bean/OPSUploadScene;)Lcom/gpc/resourcestorage/OPSResourceUploader;

    move-result-object v0

    if-nez v0, :cond_3

    .line 53
    sget-object v0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lcom/jniCallback;->retUploadAvatarState(ILjava/lang/String;I)V

    return-void

    .line 57
    :cond_3
    new-instance v1, Lcom/igg/android/conquerors/GPCHelper$1;

    invoke-direct {v1}, Lcom/igg/android/conquerors/GPCHelper$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/resourcestorage/OPSResourceUploader;->setResourceUploadListener(Lcom/gpc/resourcestorage/listener/ResourceUploadListener;)V

    .line 143
    invoke-interface {v0}, Lcom/gpc/resourcestorage/OPSResourceUploader;->start()V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/igg/android/conquerors/GPCHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public static reportChatContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedInGameReporting()Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;

    invoke-direct {v1}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;-><init>()V

    .line 332
    invoke-virtual {v1, p0}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setContent(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setUserId(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p2}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setNickname(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, p3}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setType(Ljava/lang/String;)V

    .line 341
    new-instance p0, Lcom/igg/android/conquerors/GPCHelper$6;

    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCHelper$6;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->report(Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V

    return-void
.end method

.method public static reportLordAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 359
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedInGameReporting()Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;

    invoke-direct {v1}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;-><init>()V

    .line 362
    invoke-virtual {v1, p0}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setContent(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setUserId(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, p2}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setNickname(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p3}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->setType(Ljava/lang/String;)V

    .line 371
    new-instance p0, Lcom/igg/android/conquerors/GPCHelper$7;

    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCHelper$7;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->report(Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V

    return-void
.end method
