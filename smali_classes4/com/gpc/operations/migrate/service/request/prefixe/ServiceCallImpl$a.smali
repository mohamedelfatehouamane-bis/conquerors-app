.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;
.super Lcom/gpc/operations/migrate/service/request/SignHeadersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/SignHeadersBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildHeaders(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v0}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$100(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$a;->a:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v1, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$000(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;->build(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
