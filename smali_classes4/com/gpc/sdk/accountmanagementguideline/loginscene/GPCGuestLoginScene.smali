.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;,
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginListener;,
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestCreateAndLoginListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "GPCGuestLoginScene"


# instance fields
.field public a:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    return-void
.end method


# virtual methods
.method public checkCandidate(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/GPCLogin;->checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    return-void
.end method

.method public createAndLogin(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestCreateAndLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$c;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestCreateAndLoginListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/GPCLogin;->createAndLoginWithDevice(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method

.method public login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$b;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/GPCLogin;->loginAsGuest(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method
