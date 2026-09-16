.class Lcom/InvokeHelper$24;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->sendLoginDayEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$day:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 615
    iput p1, p0, Lcom/InvokeHelper$24;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 617
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v0

    iget v1, p0, Lcom/InvokeHelper$24;->val$day:I

    invoke-virtual {v0, v1}, Lcom/AppEvent;->sendDayEvent(I)V

    return-void
.end method
