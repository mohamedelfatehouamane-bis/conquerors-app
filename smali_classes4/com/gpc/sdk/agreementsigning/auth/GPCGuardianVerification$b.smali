.class public Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->showPanel(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;

    iget-object p1, p1, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getListener()Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;

    iget-object p1, p1, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getListener()Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;->onShow()V

    :cond_0
    return-void
.end method
