.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->createAndLogin(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010\u4e8b\u4ef6\u3011\u5f53\u524d\u767b\u5f55\u4f1a\u8bdd\u662f\u5426\u662f\u65b0\u7528\u6237:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCThirdPartyAccountLog"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
