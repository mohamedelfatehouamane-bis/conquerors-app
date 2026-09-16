.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    }
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

    .line 3
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->connectTimeOut:I

    .line 4
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->readTimeOut:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doOutput:Z

    .line 6
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doInput:Z

    .line 7
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->useCaches:Z

    .line 12
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->shouldRetry:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->connectTimeOut:I

    return p0
.end method

.method public static synthetic access$002(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->connectTimeOut:I

    return p1
.end method

.method public static synthetic access$100(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->readTimeOut:I

    return p0
.end method

.method public static synthetic access$102(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->readTimeOut:I

    return p1
.end method

.method public static synthetic access$200(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doOutput:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doOutput:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doInput:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doInput:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->useCaches:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->useCaches:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->shouldRetry:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->shouldRetry:Z

    return p1
.end method


# virtual methods
.method public getConnectTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->connectTimeOut:I

    return v0
.end method

.method public getReadTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->readTimeOut:I

    return v0
.end method

.method public isDoInput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doInput:Z

    return v0
.end method

.method public isDoOutput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doOutput:Z

    return v0
.end method

.method public isShouldRetry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->shouldRetry:Z

    return v0
.end method

.method public isUseCaches()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->useCaches:Z

    return v0
.end method

.method public newBuilder()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0, p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)V

    return-object v0
.end method

.method public setConnectTimeOut(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->connectTimeOut:I

    return-void
.end method

.method public setDoInput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doInput:Z

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->doOutput:Z

    return-void
.end method

.method public setReadTimeOut(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->readTimeOut:I

    return-void
.end method

.method public setShouldRetry(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->shouldRetry:Z

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->useCaches:Z

    return-void
.end method
