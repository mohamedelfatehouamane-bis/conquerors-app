.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->requestStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "320105"

    invoke-static {p2, v1, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object p1

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object v0

    new-instance v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/gpc/sdk/misc/c;->checkAgreementsPendingSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method
