.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$b;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$b;-><init>()V

    return-void
.end method
