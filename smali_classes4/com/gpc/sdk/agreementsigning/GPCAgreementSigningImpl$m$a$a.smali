.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Lcom/gpc/sdk/error/GPCException;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    const-string v1, "GPCAgreementSigning"

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "[CMP] sign v2 update lastsining time"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/util/LocalStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] sign v2:setSyncUserState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v2, v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/misc/d;->a(Ljava/util/List;)V

    .line 10
    :cond_0
    const-string v0, "[CMP] sign v2:onSigned for the condition 4."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
