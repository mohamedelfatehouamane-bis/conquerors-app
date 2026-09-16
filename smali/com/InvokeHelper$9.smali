.class Lcom/InvokeHelper$9;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->c_sendOnceAFEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/InvokeHelper;->-$$Nest$sfgetmAFEventKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/InvokeHelper;->-$$Nest$sfgetmAFEventValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/InvokeHelper;->sendOnceAFEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
