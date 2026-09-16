.class public Lcom/gpc/sdk/realname/GPCRealNameVerification$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/realname/GPCRealNameVerification;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

.field public final synthetic b:Lcom/gpc/sdk/realname/GPCRealNameVerification;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/realname/GPCRealNameVerification;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$a;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iput-object p2, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$a;->a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$a;->a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCVerificationPanelListener;->onClose()V

    :cond_0
    return-void
.end method
