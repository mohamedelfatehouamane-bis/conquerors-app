.class public Lcom/gpc/operations/migrate/error/ExceptionMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private businessCode:Ljava/lang/String;

.field private remoteDataCode:Ljava/lang/String;

.field private remoteServiceCode:Ljava/lang/String;

.field private systemNetworkCode:Ljava/lang/String;

.field private unknowCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->unknowCode:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->systemNetworkCode:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->remoteServiceCode:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->businessCode:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->remoteDataCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generate(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1770

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b58

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f40

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->remoteDataCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->businessCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    goto :goto_1

    .line 19
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->remoteServiceCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->systemNetworkCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->unknowCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 35
    :goto_0
    invoke-virtual {p0, v0}, Lcom/gpc/operations/migrate/error/ExceptionMapping;->otherExceptionProcess(I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    if-nez v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/ExceptionMapping;->unknowCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    .line 42
    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 43
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public otherExceptionProcess(I)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
