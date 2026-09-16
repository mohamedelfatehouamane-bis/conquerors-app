.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;
.super Lcom/gpc/operations/migrate/utils/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/operations/migrate/utils/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->a:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    invoke-direct {p0}, Lcom/gpc/operations/migrate/utils/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

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
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->a:Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->onPostExecute(Ljava/util/HashMap;)V

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
    invoke-super {p0, p1}, Lcom/gpc/operations/migrate/utils/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Ljava/util/HashMap;)V

    return-void
.end method
