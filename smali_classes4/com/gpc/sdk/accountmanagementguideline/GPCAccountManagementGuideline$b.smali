.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLoginDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->setAccountManagementGuidelineDelegate(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;)V
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
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$b;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$b;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->notifySessionExpired(Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
