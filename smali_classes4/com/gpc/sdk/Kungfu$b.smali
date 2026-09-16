.class public Lcom/gpc/sdk/Kungfu$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/Kungfu;->initialize(Lcom/gpc/sdk/Kungfu$GPCInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/Kungfu$GPCInitializationListener;

.field public final synthetic b:Lcom/gpc/sdk/Kungfu;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/Kungfu$GPCInitializationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/Kungfu$b;->b:Lcom/gpc/sdk/Kungfu;

    iput-object p2, p0, Lcom/gpc/sdk/Kungfu$b;->a:Lcom/gpc/sdk/Kungfu$GPCInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 1
    const-string v0, "Kungfu"

    const-string v1, "Kunfu initialize onFailed."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu$b;->a:Lcom/gpc/sdk/Kungfu$GPCInitializationListener;

    const-string v1, "900201"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/Kungfu$GPCInitializationListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    const-string v0, "Kungfu"

    const-string v1, "Kunfu initialize onSuccess."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu$b;->a:Lcom/gpc/sdk/Kungfu$GPCInitializationListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/Kungfu$GPCInitializationListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
