.class public Lcom/gpc/noticehub/bean/GPCUserNoticeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCUserNoticeResult"


# instance fields
.field private accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

.field private gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

.field private gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

.field private liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

.field private primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

.field private raw:Ljava/lang/String;

.field private scenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/noticehub/bean/GPCUserNotice;",
            ">;"
        }
    .end annotation
.end field

.field private tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNoticeResult;
    .locals 7

    .line 1
    const-string v0, "GPCUserNoticeResult"

    :try_start_0
    new-instance v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    invoke-direct {v1}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;-><init>()V

    .line 2
    iput-object p0, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->raw:Ljava/lang/String;

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_6

    .line 5
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    const-string v4, "scene"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gpc/noticehub/bean/GPCUserNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNotice;

    move-result-object v5

    .line 8
    iget-object v6, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    const-string v5, "prime"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-static {v3}, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    goto :goto_1

    .line 13
    :cond_0
    const-string v5, "game_community"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    invoke-static {v3}, Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    goto :goto_1

    .line 16
    :cond_1
    const-string v5, "livechat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-static {v3}, Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    goto :goto_1

    .line 19
    :cond_2
    const-string v5, "ticket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    invoke-static {v3}, Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    goto :goto_1

    .line 22
    :cond_3
    const-string v5, "account_security"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-static {v3}, Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    goto :goto_1

    .line 25
    :cond_4
    const-string v5, "game_shop"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    invoke-static {v3}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    move-result-object v3

    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    :cond_5
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 30
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPCUserTipMessageResult parseJson: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 33
    const-string v1, "GPCUserTipMessageResult parseJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAccountSecurityNotice()Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    return-object v0
.end method

.method public getGameActivityNotice()Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    return-object v0
.end method

.method public getGameCommunityNotice()Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    return-object v0
.end method

.method public getLiveChatNotice()Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    return-object v0
.end method

.method public getPrimeMembershipNotice()Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getScenes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/noticehub/bean/GPCUserNotice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    return-object v0
.end method

.method public getTshNotice()Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    return-object v0
.end method

.method public getUserTipMessageByScene(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/noticehub/bean/GPCUserNotice;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAccountSecurityNotice(Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    return-void
.end method

.method public setGameActivityNotice(Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    return-void
.end method

.method public setGameCommunityNotice(Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    return-void
.end method

.method public setLiveChatNotice(Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    return-void
.end method

.method public setPrimeMembershipNotice(Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->raw:Ljava/lang/String;

    return-void
.end method

.method public setScenes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/noticehub/bean/GPCUserNotice;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    return-void
.end method

.method public setTshNotice(Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCUserNoticeResult{raw=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', scenes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tshNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveChatNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameCommunityNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primeMembershipNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accountSecurityNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameActivityNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateNoticeByWebAppId(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->scenes:Ljava/util/Map;

    const-string v1, "GPCUserNoticeResult"

    if-nez v0, :cond_0

    .line 2
    const-string p1, "updateNoticeByWebAppId scenes is null."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/noticehub/bean/GPCUserNotice;

    if-nez v0, :cond_1

    .line 7
    const-string p1, "updateNoticeByWebAppId notice is null."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/gpc/noticehub/bean/GPCUserNotice;->getUserNormalNotice()Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 12
    const-string p1, "updateNoticeByWebAppId userNormalNotice is null."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v0, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    .line 16
    const-string v0, "ticket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->tshNotice:Lcom/gpc/noticehub/bean/notice/GPCTSHNotice;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    return-void

    .line 18
    :cond_3
    const-string v0, "livechat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->liveChatNotice:Lcom/gpc/noticehub/bean/notice/GPCLiveChatNotice;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    return-void

    .line 20
    :cond_4
    const-string v0, "game_community"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->gameCommunityNotice:Lcom/gpc/noticehub/bean/notice/GPCGameCommunityNotice;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    return-void

    .line 22
    :cond_5
    const-string v0, "prime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->primeMembershipNotice:Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    return-void

    .line 24
    :cond_6
    const-string v0, "account_security"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->accountSecurityNotice:Lcom/gpc/noticehub/bean/notice/GPCAccountSecurityNotice;

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1, p2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    :cond_7
    return-void
.end method
