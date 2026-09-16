.class Lcom/InvokeHelper$5;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->onMoreAppShareClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/InvokeHelper$5;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/InvokeHelper$5;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/InvokeHelper$5;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 164
    :try_start_0
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    iget-object v1, p0, Lcom/InvokeHelper$5;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/InvokeHelper$5;->val$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/InvokeHelper$5;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igg/android/conquerors/col;->moreAppShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
