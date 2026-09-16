.class Lcom/SwitchsToIGGPassportActivity$3;
.super Ljava/lang/Object;
.source "SwitchsToIGGPassportActivity.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/SwitchsToIGGPassportActivity;->_agreeSwitchGPCPassport(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/AccountHelper;->_callGameSwitchAccount(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;Ljava/lang/Boolean;)V

    return-void
.end method
