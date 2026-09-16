.class public Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;
.super Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$APIGatewayCallbackT;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->c:Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;

    iput-object p6, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->b:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$APIGatewayCallbackT;-><init>(Ljava/util/List;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public repeat(Ljava/util/List;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->c:Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;

    iget-object v3, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl$a;->b:Ljava/util/Map;

    move-object v5, p0

    move-object v2, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;->access$000(Lcom/gpc/operations/migrate/service/request/api/MultiLinkImpl;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method
