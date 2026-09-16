.class public Lcom/gpc/aws/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I

.field private statusText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/gpc/aws/http/HttpResponse;
    .locals 6

    .line 178
    new-instance v0, Lcom/gpc/aws/http/HttpResponse;

    iget-object v1, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->statusText:Ljava/lang/String;

    iget v2, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->statusCode:I

    iget-object v3, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    .line 179
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->content:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/gpc/aws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/gpc/aws/http/HttpResponse$1;)V

    return-object v0
.end method

.method public content(Ljava/io/InputStream;)Lcom/gpc/aws/http/HttpResponse$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->content:Ljava/io/InputStream;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/http/HttpResponse$Builder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public statusCode(I)Lcom/gpc/aws/http/HttpResponse$Builder;
    .locals 0

    .line 144
    iput p1, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->statusCode:I

    return-object p0
.end method

.method public statusText(Ljava/lang/String;)Lcom/gpc/aws/http/HttpResponse$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/gpc/aws/http/HttpResponse$Builder;->statusText:Ljava/lang/String;

    return-object p0
.end method
