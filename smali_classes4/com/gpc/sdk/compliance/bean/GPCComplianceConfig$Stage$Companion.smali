.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;
    .locals 2

    const-string v0, "stageObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;-><init>()V

    .line 3
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V

    .line 9
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;->setCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)V

    return-object v0
.end method
