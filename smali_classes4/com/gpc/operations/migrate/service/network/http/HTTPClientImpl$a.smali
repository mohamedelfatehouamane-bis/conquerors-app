.class public Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;
.super Lcom/gpc/operations/migrate/service/network/http/HTTPTask$TaksRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;

.field public final synthetic c:Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->c:Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->a:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    iput-object p3, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/HTTPTask$TaksRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->c:Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->a:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;

    invoke-static {v0, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;->access$000(Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPConnection;)Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    return-object v0
.end method
