.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public businessErrorCode:I

.field public businessErrorMsg:Ljava/lang/String;

.field public requestError:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->requestError:I

    .line 3
    iput p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    .line 4
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->businessErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isOccurred()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->requestError:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
