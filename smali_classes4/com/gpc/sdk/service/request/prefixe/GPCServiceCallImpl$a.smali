.class public Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$a;
.super Lcom/gpc/sdk/service/request/GPCSignHeadersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$a;->a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-direct {p0}, Lcom/gpc/sdk/service/request/GPCSignHeadersBuilder;-><init>()V

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
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$a;->a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v0}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$100(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;)Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$a;->a:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v1, p1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$000(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;->build(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
