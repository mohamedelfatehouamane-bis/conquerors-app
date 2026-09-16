.class public Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GPCAcceptedNetworkUser"


# instance fields
.field public acceptedNetwork:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

.field public extraInfo:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;

.field public nickName:Ljava/lang/String;

.field public uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2
    const-string v0, ""

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\u"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "unicodeBytes is: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GPCAcceptedNetworkUser"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertArrayToJson(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;

    .line 6
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    const-string v4, "uid"

    iget-object v5, v2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->uniqueId:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v4, "nickname"

    iget-object v5, v2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->nickName:Ljava/lang/String;

    invoke-static {v5}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    iget-object v2, v2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->extraInfo:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 15
    :cond_0
    const-string v2, "info"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 19
    const-string v3, "GPCAcceptedNetworkUser"

    invoke-static {v3, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mobileContactUser(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;

    invoke-direct {v0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->uniqueId:Ljava/lang/String;

    .line 3
    iput-object p0, v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->nickName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAcceptedNetwork()Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->acceptedNetwork:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-object v0
.end method

.method public setAcceptedNetwork(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->acceptedNetwork:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-void
.end method

.method public setExtraInfo(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->extraInfo:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;

    return-void

    .line 6
    :cond_1
    :goto_0
    const-string p1, "GPCAcceptedNetworkUser"

    const-string v0, "extraInfo is invalid!"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
