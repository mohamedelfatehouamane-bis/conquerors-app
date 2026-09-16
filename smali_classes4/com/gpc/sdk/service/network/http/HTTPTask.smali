.class public Lcom/gpc/sdk/service/network/http/HTTPTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "HTTPTask"


# instance fields
.field public a:Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;

.field public b:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPTask;->a:Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;

    return-void
.end method


# virtual methods
.method public a()Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPTask;->b:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPTask;->a:Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;->run()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPTask;->a:Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;

    iget-object v0, v0, Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;->result:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPTask;->b:Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    return-void
.end method
