.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->checkCandidate(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    const-string p2, ""

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;

    invoke-interface {p4, p1, p3, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void
.end method
