.class Lcom/InvokeHelper$8;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->sendRewardAdEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$parameters:[Ljava/lang/String;

.field final synthetic val$sendType:I

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    iput p1, p0, Lcom/InvokeHelper$8;->val$sendType:I

    iput-object p2, p0, Lcom/InvokeHelper$8;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/InvokeHelper$8;->val$eventName:Ljava/lang/String;

    iput-object p4, p0, Lcom/InvokeHelper$8;->val$parameters:[Ljava/lang/String;

    iput-object p5, p0, Lcom/InvokeHelper$8;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 216
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v0

    iget v1, p0, Lcom/InvokeHelper$8;->val$sendType:I

    iget-object v2, p0, Lcom/InvokeHelper$8;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/InvokeHelper$8;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/InvokeHelper$8;->val$parameters:[Ljava/lang/String;

    iget-object v5, p0, Lcom/InvokeHelper$8;->val$values:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/AppEvent;->sendRewardedADEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
