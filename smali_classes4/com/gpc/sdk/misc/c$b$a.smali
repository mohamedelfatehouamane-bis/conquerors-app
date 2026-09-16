.class public Lcom/gpc/sdk/misc/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/c$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$b$a;->a:Lcom/gpc/sdk/misc/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "320204"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/misc/c$b$a;->a:Lcom/gpc/sdk/misc/c$b;

    iget-object p2, p2, Lcom/gpc/sdk/misc/c$b;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320201"

    const-string v1, "20"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/16 v2, 0xbb8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xfa0

    if-eq p1, v2, :cond_1

    const/16 v2, 0x1770

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1388

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1389

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "320203"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "320202"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$b$a;->a:Lcom/gpc/sdk/misc/c$b;

    iget-object p1, p1, Lcom/gpc/sdk/misc/c$b;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$b$a;->a:Lcom/gpc/sdk/misc/c$b;

    iget-object p1, p1, Lcom/gpc/sdk/misc/c$b;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
