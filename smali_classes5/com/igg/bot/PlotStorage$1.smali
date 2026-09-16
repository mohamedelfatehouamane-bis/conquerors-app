.class Lcom/igg/bot/PlotStorage$1;
.super Ljava/lang/Object;
.source "PlotStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/igg/bot/SavedPlot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/PlotStorage;


# direct methods
.method constructor <init>(Lcom/igg/bot/PlotStorage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/igg/bot/PlotStorage$1;->this$0:Lcom/igg/bot/PlotStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/igg/bot/SavedPlot;Lcom/igg/bot/SavedPlot;)I
    .locals 3

    .line 46
    iget-wide v0, p2, Lcom/igg/bot/SavedPlot;->createdAt:J

    iget-wide p1, p1, Lcom/igg/bot/SavedPlot;->createdAt:J

    cmp-long v2, v0, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    check-cast p1, Lcom/igg/bot/SavedPlot;

    check-cast p2, Lcom/igg/bot/SavedPlot;

    invoke-virtual {p0, p1, p2}, Lcom/igg/bot/PlotStorage$1;->compare(Lcom/igg/bot/SavedPlot;Lcom/igg/bot/SavedPlot;)I

    move-result p1

    return p1
.end method
