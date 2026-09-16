.class public Lcom/gpc/sdk/instagram/GPCInstagramClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Ljava/lang/String;)V
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/instagram/GPCInstagramClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "user"

    const-string v1, "Got access token: "

    const-string v2, "response "

    const-string v3, "client_id="

    const-string v4, "Opening Token URL "

    .line 1
    const-string v5, "Getting access token"

    const-string v6, "InstagramAPI"

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a()I

    move-result v5

    const/4 v7, 0x1

    .line 4
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v9, "https://api.instagram.com/oauth/access_token"

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 9
    const-string v8, "POST"

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 11
    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 13
    new-instance v8, Ljava/io/OutputStreamWriter;

    .line 14
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v3}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->b(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&client_secret="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    .line 16
    invoke-static {v3}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->c(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&grant_type=authorization_code&redirect_uri="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gpc/sdk/instagram/GPCInstagramClient;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&code="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v8, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    .line 22
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/gpc/util/Utils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 29
    iget-object v3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->b(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "full_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v2}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->e(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramSession;

    move-result-object v2

    iget-object v4, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v4}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3, v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->storeAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    sget v5, Lcom/gpc/sdk/instagram/GPCInstagramClient;->WHAT_ERROR:I

    .line 42
    const-string v1, ""

    invoke-static {v6, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->f(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->b:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->f(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v7, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
    invoke-virtual {p0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
