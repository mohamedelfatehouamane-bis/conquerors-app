.class public Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->requestFriends(Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/instagram/GPCInstagramApiClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->b:Lcom/gpc/sdk/instagram/GPCInstagramApiClient;

    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Lcom/gpc/sdk/instagram/helper/GPCInstagramJSONParser;

    invoke-direct {v2}, Lcom/gpc/sdk/instagram/helper/GPCInstagramJSONParser;-><init>()V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->b:Lcom/gpc/sdk/instagram/GPCInstagramApiClient;

    invoke-static {v4}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->b:Lcom/gpc/sdk/instagram/GPCInstagramApiClient;

    invoke-static {v4}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->b(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->b:Lcom/gpc/sdk/instagram/GPCInstagramApiClient;

    invoke-static {v4}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->c(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/instagram/helper/GPCInstagramJSONParser;->getJSONFromUrlByGet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 8
    new-instance v5, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;

    invoke-direct {v5}, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;-><init>()V

    .line 10
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 11
    const-string v7, "username"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;->userName:Ljava/lang/String;

    .line 12
    const-string v7, "profile_picture"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;->profilePicture:Ljava/lang/String;

    .line 13
    const-string v7, "full_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;->fullName:Ljava/lang/String;

    .line 14
    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;->id:Ljava/lang/String;

    .line 16
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonObject::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    const-string v2, "InstagramApiClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;

    const-string v2, "101"

    invoke-static {v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
