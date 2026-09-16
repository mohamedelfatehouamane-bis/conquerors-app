.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void
.end method
