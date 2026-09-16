.class public final Lcom/gpc/aws/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final httpResponse:Lcom/gpc/aws/http/HttpResponse;

.field private final response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/gpc/aws/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/gpc/aws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gpc/aws/Response;->response:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/gpc/aws/Response;->httpResponse:Lcom/gpc/aws/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getAwsResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/gpc/aws/Response;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpResponse()Lcom/gpc/aws/http/HttpResponse;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/gpc/aws/Response;->httpResponse:Lcom/gpc/aws/http/HttpResponse;

    return-object v0
.end method
