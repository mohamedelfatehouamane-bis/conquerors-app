.class Lcom/InvokeHelper$4;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->generateDeviceID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/InvokeHelper;

.field final synthetic val$sAdValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/InvokeHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/InvokeHelper$4;->this$0:Lcom/InvokeHelper;

    iput-object p2, p0, Lcom/InvokeHelper$4;->val$sAdValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/InvokeHelper$4;->val$sAdValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/InvokeHelper;->-$$Nest$sfputsDeviceID(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/igg/android/conquerors/col;->setDeviceInfo()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sDeviceID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/InvokeHelper$4;->val$sAdValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generateDeviceID"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
