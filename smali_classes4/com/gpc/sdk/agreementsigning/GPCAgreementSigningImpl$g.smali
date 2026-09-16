.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->signKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

.field public final synthetic c:I

.field public final synthetic d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    iput-object p3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    iput p4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "320205"

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    const-string p1, "GPCAgreementSigning"

    const-string v0, "[CMP] signKRSpecialConditions update lastsining time"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/util/LocalStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->d:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->c:I

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/gpc/sdk/misc/c;->signKO(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method
