.class Lcom/InvokeHelper$2;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->init(Lcom/igg/android/conquerors/col;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/InvokeHelper;


# direct methods
.method constructor <init>(Lcom/InvokeHelper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/InvokeHelper$2;->this$0:Lcom/InvokeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "AgreementSigning:"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
