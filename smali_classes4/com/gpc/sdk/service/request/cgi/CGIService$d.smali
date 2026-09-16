.class public Lcom/gpc/sdk/service/request/cgi/CGIService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/cgi/CGIService;->get(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/cgi/CGIService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/cgi/CGIService;Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/CGIService$d;->b:Lcom/gpc/sdk/service/request/cgi/CGIService;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/cgi/CGIService$d;->a:Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/CGIService$d;->b:Lcom/gpc/sdk/service/request/cgi/CGIService;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/CGIService$d;->a:Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/gpc/sdk/service/request/cgi/CGIService;->access$100(Lcom/gpc/sdk/service/request/cgi/CGIService;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/CGIRequestListener;)V

    return-void
.end method
