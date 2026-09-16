.class public Lcom/gpc/sdk/account/GPCLogin$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCLogin;->start(Lcom/gpc/sdk/account/GPCLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$a;->b:Lcom/gpc/sdk/account/GPCLogin;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$a;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$a;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$a;->b:Lcom/gpc/sdk/account/GPCLogin;

    invoke-virtual {p1, p4}, Lcom/gpc/sdk/account/GPCLogin;->notifySessionExpired(Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
