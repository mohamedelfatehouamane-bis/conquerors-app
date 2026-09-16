.class Lcom/AccountHelper$17$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AccountHelper$17;


# direct methods
.method constructor <init>(Lcom/AccountHelper$17;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/AccountHelper$17$2;->this$0:Lcom/AccountHelper$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V
    .locals 0

    .line 718
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 719
    invoke-static {p2}, Lcom/AccountHelper;->retLoadUser(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void

    .line 722
    :cond_0
    const-string p1, "AccountHelper-"

    const-string p2, "error!!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
