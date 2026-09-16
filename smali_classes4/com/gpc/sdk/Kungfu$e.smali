.class public Lcom/gpc/sdk/Kungfu$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/Kungfu;->quickLogin(Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/Kungfu;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/Kungfu$e;->b:Lcom/gpc/sdk/Kungfu;

    iput-object p2, p0, Lcom/gpc/sdk/Kungfu$e;->a:Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/Kungfu$e;->a:Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;->OnError(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u3010\u4e8b\u4ef6\u3011\u5f53\u524d\u767b\u5f55\u4f1a\u8bdd\u662f\u5426\u662f\u65b0\u7528\u6237:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kungfu"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/Kungfu$e;->a:Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;->OnLoggedIn(Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
