.class Lcom/igg/sdk/invite/DragButton$Point;
.super Ljava/lang/Object;
.source "DragButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/sdk/invite/DragButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/sdk/invite/DragButton;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/igg/sdk/invite/DragButton;II)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/igg/sdk/invite/DragButton$Point;->this$0:Lcom/igg/sdk/invite/DragButton;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p2, p0, Lcom/igg/sdk/invite/DragButton$Point;->x:I

    .line 130
    iput p3, p0, Lcom/igg/sdk/invite/DragButton$Point;->y:I

    return-void
.end method
