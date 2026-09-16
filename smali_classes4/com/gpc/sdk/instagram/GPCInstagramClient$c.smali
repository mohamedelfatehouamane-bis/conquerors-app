.class public Lcom/gpc/sdk/instagram/GPCInstagramClient$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/instagram/GPCInstagramClient;->fetchUserName(Landroid/os/Handler;)V
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
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/gpc/sdk/instagram/GPCInstagramClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "code"

    const-string v2, "full_name"

    const-string v3, "media"

    const-string v4, "followed_by"

    const-string v5, "follows"

    const-string v6, "website"

    const-string v7, "bio"

    const-string v8, "username"

    const-string v9, "profile_picture"

    const-string v10, "id"

    const-string v11, "Opening URL "

    const-string v12, "https://api.instagram.com/v1/users/"

    .line 1
    const-string v13, "Fetching user info"

    const-string v14, "InstagramAPI"

    invoke-static {v14, v13}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v13, Lcom/gpc/sdk/instagram/GPCInstagramClient;->WHAT_FINALIZE:I

    .line 4
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move/from16 v16, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v12}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->e(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramSession;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/?access_token="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    .line 5
    invoke-static {v12}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 10
    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 11
    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 12
    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 14
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 15
    invoke-static {v11}, Lcom/gpc/util/Utils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 17
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    new-instance v12, Lorg/json/JSONTokener;

    invoke-direct {v12, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v12}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 26
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 27
    iget-object v13, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v13}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v10, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v10}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v10

    .line 30
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-virtual {v10, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v9, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v9}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v8, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v8}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v7, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v7}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v6, "counts"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 42
    iget-object v7, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v7}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v5, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v5}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v5

    .line 45
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v4, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v4}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v3}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v3

    .line 52
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "meta"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    iget-object v3, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v3}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v13, v16

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    sget v13, Lcom/gpc/sdk/instagram/GPCInstagramClient;->WHAT_ERROR:I

    .line 61
    const-string v2, ""

    invoke-static {v14, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :goto_0
    iget-object v0, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 64
    iget-object v0, v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
