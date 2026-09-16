.class public abstract Lcom/gpc/operations/migrate/service/network/http/HTTPTask$TaksRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/network/http/HTTPTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaksRunnable"
.end annotation


# instance fields
.field result:Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract httpRequest()Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/network/http/HTTPTask$TaksRunnable;->httpRequest()Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPTask$TaksRunnable;->result:Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;

    return-void
.end method
