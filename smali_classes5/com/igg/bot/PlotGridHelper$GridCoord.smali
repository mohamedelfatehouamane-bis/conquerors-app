.class public Lcom/igg/bot/PlotGridHelper$GridCoord;
.super Ljava/lang/Object;
.source "PlotGridHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/bot/PlotGridHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridCoord"
.end annotation


# instance fields
.field public col:I

.field public row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/igg/bot/PlotGridHelper$GridCoord;->row:I

    .line 14
    iput p2, p0, Lcom/igg/bot/PlotGridHelper$GridCoord;->col:I

    .line 15
    return-void
.end method
