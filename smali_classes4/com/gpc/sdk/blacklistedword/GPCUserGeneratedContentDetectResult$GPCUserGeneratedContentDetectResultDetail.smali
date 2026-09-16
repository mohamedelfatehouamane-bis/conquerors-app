.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPCUserGeneratedContentDetectResultDetail"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public rate:D

.field public reason:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupData(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "scene"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->scene:Ljava/lang/String;

    .line 2
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->label:Ljava/lang/String;

    .line 3
    const-string v0, "rate"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->rate:D

    .line 4
    const-string v0, "suggestion"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->suggestion:Ljava/lang/String;

    .line 5
    const-string v0, "extras.reason"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->reason:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCUserGeneratedContentDetectResultDetail{label=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', scene=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->rate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', suggestion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->suggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
