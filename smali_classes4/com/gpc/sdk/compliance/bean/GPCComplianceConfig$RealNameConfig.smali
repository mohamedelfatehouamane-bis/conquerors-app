.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealNameConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;

.field public static final MODE_FORCE:Ljava/lang/String; = "force"

.field public static final MODE_GRACEFULLY:Ljava/lang/String; = "gracefully"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "force"

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->a:Z

    return v0
.end method

.method public final setMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final setOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->a:Z

    return-void
.end method
