.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;
.super Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
    .locals 2

    .line 66
    new-instance v0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;-><init>()V

    .line 67
    new-instance v1, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "GPC_CHAR_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "GPC_ACCESS_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "GPC_USER_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "GPC_GAME_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "GPC_SSO_TOKEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "GPC_UIID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "GPC_UDID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "GPC_SERVER_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    .line 27
    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 28
    :pswitch_0
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "char_id"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 29
    :pswitch_1
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_key"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 30
    :pswitch_2
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 31
    :pswitch_3
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_id"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 43
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->a(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V

    return-void

    .line 44
    :pswitch_5
    new-instance p1, Landroid/util/Pair;

    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCIdsManager;->getUIID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uiid"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 45
    :pswitch_6
    new-instance p1, Landroid/util/Pair;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udid"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 60
    :pswitch_7
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_id"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x38b5e1ee -> :sswitch_7
        -0x30e2f371 -> :sswitch_6
        -0x30e2e0ac -> :sswitch_5
        -0x18eac9fc -> :sswitch_4
        0x1bfcedc3 -> :sswitch_3
        0x1ee0934a -> :sswitch_2
        0x4abd39c9 -> :sswitch_1
        0x53b2bbdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
