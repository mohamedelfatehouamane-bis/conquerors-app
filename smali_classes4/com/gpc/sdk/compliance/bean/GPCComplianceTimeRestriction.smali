.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->a:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getStart()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;

    return-object v0
.end method

.method public final setEnd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->b:Ljava/lang/String;

    return-void
.end method

.method public final setStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->a:Ljava/lang/String;

    return-void
.end method

.method public final setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;

    return-void
.end method
