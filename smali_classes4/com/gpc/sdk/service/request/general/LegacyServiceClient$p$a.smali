.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;
.super Lcom/gpc/util/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/util/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->a:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-direct {p0}, Lcom/gpc/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;

    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->a:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-static {p1, v0}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/gpc/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;

    invoke-static {v0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Ljava/util/HashMap;)V

    return-void
.end method
