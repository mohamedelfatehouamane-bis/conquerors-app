.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$requestAssignedAgreements$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$requestAssignedAgreements$1;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V
    .locals 1

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$requestAssignedAgreements$1;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;)V

    return-void
.end method
