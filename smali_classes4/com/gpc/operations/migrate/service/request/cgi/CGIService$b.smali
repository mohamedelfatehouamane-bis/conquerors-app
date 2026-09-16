.class public Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->post(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;

.field public final synthetic c:Lcom/gpc/operations/migrate/service/request/cgi/CGIService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->c:Lcom/gpc/operations/migrate/service/request/cgi/CGIService;

    iput-boolean p2, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->a:Z

    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->b:Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->c:Lcom/gpc/operations/migrate/service/request/cgi/CGIService;

    iget-boolean v4, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->a:Z

    iget-object v5, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;->b:Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->access$000(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method
