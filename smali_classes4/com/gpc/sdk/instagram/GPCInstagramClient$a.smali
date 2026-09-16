.class public Lcom/gpc/sdk/instagram/GPCInstagramClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/instagram/GPCInstagramClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {v0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient$a;->a:Lcom/gpc/sdk/instagram/GPCInstagramClient;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    move-result-object p1

    const-string v0, "Authorization failed"

    invoke-interface {p1, v0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;->onFail(Ljava/lang/String;)V

    return-void
.end method
