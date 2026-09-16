.class Lcom/AccountHelper$6$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AccountHelper$6;


# direct methods
.method constructor <init>(Lcom/AccountHelper$6;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/AccountHelper$6$1;->this$0:Lcom/AccountHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/AccountHelper;->_callGameSwitchAccount(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;Ljava/lang/Boolean;)V

    return-void
.end method
