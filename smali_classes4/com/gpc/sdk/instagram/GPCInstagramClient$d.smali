.class public Lcom/gpc/sdk/instagram/GPCInstagramClient$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/instagram/GPCInstagramClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/instagram/GPCInstagramClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/gpc/sdk/instagram/GPCInstagramClient;->WHAT_ERROR:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    move-result-object p1

    const-string v0, "Failed to get access token"

    invoke-interface {p1, v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;->onFail(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    move-result-object p1

    const-string v0, "Failed to get user information"

    invoke-interface {p1, v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;->onSuccess()V

    :cond_2
    return-void
.end method
