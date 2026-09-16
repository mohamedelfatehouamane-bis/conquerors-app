.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROTATION_DEFAULT()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->access$getROTATION_DEFAULT$cp()I

    move-result v0

    return v0
.end method

.method public final getUNLIMITED()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->access$getUNLIMITED$cp()D

    move-result-wide v0

    return-wide v0
.end method
