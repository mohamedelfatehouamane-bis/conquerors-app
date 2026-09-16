.class public Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final CONF_FILE_NAME:Ljava/lang/String; = "gpcsdk.external.settings.txt"

.field private static final PRE_DEBUG_CONF_ERROR_SERVER:Ljava/lang/String; = "error"

.field private static final PRE_DEBUG_CONF_ERROR_TIP:Ljava/lang/String; = "preDebugConf.error"

.field public static S_CONF_FILE_NAME:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "PreConfigManager"


# instance fields
.field private confTxt:Ljava/lang/String;

.field private configuration:Lcom/gpc/operations/migrate/Configuration;

.field private context:Landroid/content/Context;

.field private localConf:Lcom/gpc/operations/migrate/preenv/PreLocalConf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readConf()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->confTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->readPreDebugConfFromTxt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->confTxt:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->confTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PreConfigManager"

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "read conf error, data is null !!!"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "conf txt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->confTxt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigAdaptedVersionParser;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigAdaptedVersionParser;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->confTxt:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/gpc/operations/migrate/familyurl/IParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->createFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->localConf:Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->isPreDebugProfileError()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->localConf:Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->getPreDebugProfile()Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->getGCID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/Configuration;->getGameId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 14
    :cond_3
    :goto_0
    const-string v0, " read conf error! "

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->localConf:Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    return-void
.end method

.method private readPreDebugConfFromTxt()Ljava/lang/String;
    .locals 4

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "gpcsdk.external.settings.txt"

    .line 6
    :goto_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getPreDebugConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PreConfigManager"

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "conf file:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not in assets, Please CHECK IT OUT!!!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    return-object v0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "read conf file:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalConf()Lcom/gpc/operations/migrate/preenv/PreLocalConf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->localConf:Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->readConf()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
