.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
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

.field private shouldRetry:Z

.field private useCaches:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 2
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 3
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 6
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 8
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    return-void
.end method

.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 10
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 11
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 13
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 14
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 16
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    .line 52
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$000(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)I

    move-result v0

    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    .line 53
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$100(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)I

    move-result v0

    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    .line 54
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$200(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    .line 55
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$300(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    .line 56
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$400(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    .line 57
    invoke-static {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$500(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;-><init>()V

    .line 2
    iget v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$002(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;I)I

    .line 3
    iget v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$102(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;I)I

    .line 4
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$202(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 5
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$302(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 6
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$402(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z

    .line 7
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->access$502(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z

    return-object v0
.end method

.method public connectTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut:I

    return-object p0
.end method

.method public doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput:Z

    return-object p0
.end method

.method public doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput:Z

    return-object p0
.end method

.method public readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut:I

    return-object p0
.end method

.method public shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry:Z

    return-object p0
.end method

.method public useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches:Z

    return-object p0
.end method
