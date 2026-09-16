.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;-><init>(Lcom/gpc/sdk/account/GPCLogin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 1

    .line 1
    const-string p1, "Guideline"

    const-string v0, "rec new user login."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setUserId(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setBindingProfiles(Ljava/util/List;)V

    return-void
.end method
