.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;
.super Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->postJSONRequest(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;

    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$Callback;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "statuscode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2
    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/migrate/error/GPCException;

    .line 4
    const-string v2, "rawresponse"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, v1, v0, p1}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;->onGeneralRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
