.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMode(Ljava/lang/String;)Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-object p1
.end method
