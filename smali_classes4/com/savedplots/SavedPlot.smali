.class public Lcom/savedplots/SavedPlot;
.super Ljava/lang/Object;
.source "SavedPlot.java"


# instance fields
.field private createdAt:J

.field private gridColumn:Ljava/lang/Integer;

.field private gridRow:Ljava/lang/Integer;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private screenX:F

.field private screenY:F

.field private worldX:Ljava/lang/Float;

.field private worldY:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/savedplots/SavedPlot;->name:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/savedplots/SavedPlot;->screenX:F

    .line 25
    iput p4, p0, Lcom/savedplots/SavedPlot;->screenY:F

    .line 26
    iput-object p5, p0, Lcom/savedplots/SavedPlot;->gridRow:Ljava/lang/Integer;

    .line 27
    iput-object p6, p0, Lcom/savedplots/SavedPlot;->gridColumn:Ljava/lang/Integer;

    .line 28
    iput-object p7, p0, Lcom/savedplots/SavedPlot;->worldX:Ljava/lang/Float;

    .line 29
    iput-object p8, p0, Lcom/savedplots/SavedPlot;->worldY:Ljava/lang/Float;

    .line 30
    iput-wide p9, p0, Lcom/savedplots/SavedPlot;->createdAt:J

    .line 31
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/savedplots/SavedPlot;
    .locals 19

    .line 96
    move-object/from16 v0, p0

    const-string v1, "worldY"

    const-string v2, "worldX"

    const-string v3, "gridColumn"

    const-string v4, "gridRow"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    .line 98
    :cond_0
    :try_start_0
    const-string v6, "id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    const-string v6, "name"

    const-string v7, "Saved Location"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    const-string v6, "screenX"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 101
    const-string v6, "screenY"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v12, v6

    .line 103
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v13, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v13, v4

    .line 104
    :goto_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v14, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, v3

    .line 105
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v15, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v15, v2

    .line 106
    :goto_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v16, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v16, v1

    .line 107
    :goto_3
    const-string v1, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 109
    new-instance v0, Lcom/savedplots/SavedPlot;

    move-object v8, v0

    invoke-direct/range {v8 .. v18}, Lcom/savedplots/SavedPlot;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    return-object v5
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/savedplots/SavedPlot;->createdAt:J

    return-wide v0
.end method

.method public getGridColumn()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->gridColumn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGridRow()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->gridRow:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenX()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/savedplots/SavedPlot;->screenX:F

    return v0
.end method

.method public getScreenY()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/savedplots/SavedPlot;->screenY:F

    return v0
.end method

.method public getWorldX()Ljava/lang/Float;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->worldX:Ljava/lang/Float;

    return-object v0
.end method

.method public getWorldY()Ljava/lang/Float;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/savedplots/SavedPlot;->worldY:Ljava/lang/Float;

    return-object v0
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/savedplots/SavedPlot;->createdAt:J

    return-void
.end method

.method public setGridColumn(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->gridColumn:Ljava/lang/Integer;

    return-void
.end method

.method public setGridRow(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->gridRow:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->name:Ljava/lang/String;

    return-void
.end method

.method public setScreenX(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/savedplots/SavedPlot;->screenX:F

    return-void
.end method

.method public setScreenY(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/savedplots/SavedPlot;->screenY:F

    return-void
.end method

.method public setWorldX(Ljava/lang/Float;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->worldX:Ljava/lang/Float;

    return-void
.end method

.method public setWorldY(Ljava/lang/Float;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/savedplots/SavedPlot;->worldY:Ljava/lang/Float;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    const-string v1, "id"

    iget-object v2, p0, Lcom/savedplots/SavedPlot;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "name"

    iget-object v2, p0, Lcom/savedplots/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget v1, p0, Lcom/savedplots/SavedPlot;->screenX:F

    float-to-double v1, v1

    const-string v3, "screenX"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    iget v1, p0, Lcom/savedplots/SavedPlot;->screenY:F

    float-to-double v1, v1

    const-string v3, "screenY"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 67
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->gridRow:Ljava/lang/Integer;

    const-string v2, "gridRow"

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->gridRow:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 70
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->gridColumn:Ljava/lang/Integer;

    const-string v2, "gridColumn"

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->gridColumn:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 76
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->worldX:Ljava/lang/Float;

    const-string v2, "worldX"

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->worldX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 82
    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :goto_2
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->worldY:Ljava/lang/Float;

    const-string v2, "worldY"

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/savedplots/SavedPlot;->worldY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_3

    .line 88
    :cond_3
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :goto_3
    const-string v1, "createdAt"

    iget-wide v2, p0, Lcom/savedplots/SavedPlot;->createdAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method
