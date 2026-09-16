.class public final Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalizedActionDismiss()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizedActionTerminate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizedCaption()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizedTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setLocalizedActionDismiss(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->c:Ljava/lang/String;

    return-void
.end method

.method public final setLocalizedActionTerminate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->d:Ljava/lang/String;

    return-void
.end method

.method public final setLocalizedCaption(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->b:Ljava/lang/String;

    return-void
.end method

.method public final setLocalizedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->a:Ljava/lang/String;

    return-void
.end method
