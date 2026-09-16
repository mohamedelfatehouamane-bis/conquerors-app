.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentCap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;


# instance fields
.field public a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

.field public b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-void
.end method


# virtual methods
.method public final getCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    return-object v0
.end method

.method public final getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-object v0
.end method

.method public final setCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    return-void
.end method

.method public final setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentCap(text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', purchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
