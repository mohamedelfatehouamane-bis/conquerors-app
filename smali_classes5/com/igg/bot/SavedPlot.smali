.class public Lcom/igg/bot/SavedPlot;
.super Ljava/lang/Object;
.source "SavedPlot.java"


# instance fields
.field public createdAt:J

.field public gridColumn:Ljava/lang/Integer;

.field public gridRow:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public screenX:F

.field public screenY:F

.field public worldX:Ljava/lang/Float;

.field public worldY:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    .line 22
    const-string v0, "Plot"

    iput-object v0, p0, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igg/bot/SavedPlot;->createdAt:J

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/igg/bot/SavedPlot;->screenX:F

    .line 32
    iput p4, p0, Lcom/igg/bot/SavedPlot;->screenY:F

    .line 33
    iput-object p5, p0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    .line 34
    iput-object p6, p0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    .line 35
    iput-object p7, p0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    .line 36
    iput-object p8, p0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    .line 37
    iput-wide p9, p0, Lcom/igg/bot/SavedPlot;->createdAt:J

    .line 38
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/igg/bot/SavedPlot;
    .locals 6

    .line 55
    new-instance v0, Lcom/igg/bot/SavedPlot;

    invoke-direct {v0}, Lcom/igg/bot/SavedPlot;-><init>()V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    .line 57
    const-string v1, "name"

    const-string v2, "Plot"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    .line 58
    const-string v1, "screenX"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v0, Lcom/igg/bot/SavedPlot;->screenX:F

    .line 59
    const-string v1, "screenY"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/igg/bot/SavedPlot;->screenY:F

    .line 60
    const-string v1, "gridRow"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    .line 63
    :cond_0
    const-string v1, "gridColumn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    .line 66
    :cond_1
    const-string v1, "worldX"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    .line 69
    :cond_2
    const-string v1, "worldY"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    .line 72
    :cond_3
    const-string v1, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/igg/bot/SavedPlot;->createdAt:J

    .line 73
    return-object v0
.end method


# virtual methods
.method public getPositionSummary()Ljava/lang/String;
    .locals 7

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget v1, p0, Lcom/igg/bot/SavedPlot;->screenX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/igg/bot/SavedPlot;->screenY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "Screen: (%.0f, %.0f)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v4, v6, v1

    const-string v2, " | Grid: (%d, %d)"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    iget-object v4, p0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v4, v3, v1

    const-string v1, " | World: (%.1f, %.1f)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    const-string v1, "id"

    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "name"

    iget-object v2, p0, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget v1, p0, Lcom/igg/bot/SavedPlot;->screenX:F

    float-to-double v1, v1

    const-string v3, "screenX"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 45
    iget v1, p0, Lcom/igg/bot/SavedPlot;->screenY:F

    float-to-double v1, v1

    const-string v3, "screenY"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 46
    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->gridRow:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "gridRow"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->gridColumn:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "gridColumn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->worldX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "worldX"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/igg/bot/SavedPlot;->worldY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "worldY"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 50
    :cond_3
    const-string v1, "createdAt"

    iget-wide v2, p0, Lcom/igg/bot/SavedPlot;->createdAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    return-object v0
.end method
