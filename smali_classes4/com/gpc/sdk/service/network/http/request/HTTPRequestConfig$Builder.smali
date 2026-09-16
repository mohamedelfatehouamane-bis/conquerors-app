.class public Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private connectTimeOut:I

.field private doInput:Z

.field private doOutput:Z

.field private readTimeOut:I

.field private retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

.field private shouldRetry:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private useCaches:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 2
    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 3
    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 6
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 8
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    .line 10
    sget-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 12
    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 13
    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 15
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 16
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 18
    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    .line 20
    sget-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    .line 62
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$000(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 63
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$100(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    .line 64
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$200(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 65
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$300(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 66
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$400(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 67
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$500(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    .line 68
    invoke-static {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$600(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-void
.end method


# virtual methods
.method public build()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;-><init>()V

    .line 2
    iget v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$002(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;I)I

    .line 3
    iget v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$102(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;I)I

    .line 4
    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$202(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 5
    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$302(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 6
    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$402(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 7
    iget-boolean v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$502(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    invoke-static {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->access$602(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;)Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-object v0
.end method

.method public connectTimeOut(I)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    return-object p0
.end method

.method public doInput(Z)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    return-object p0
.end method

.method public doOutput(Z)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    return-object p0
.end method

.method public readTimeOut(I)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    return-object p0
.end method

.method public retryStrategy(Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->retryStrategy:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-object p0
.end method

.method public shouldRetry(Z)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    return-object p0
.end method

.method public useCaches(Z)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    return-object p0
.end method
