.class Lcom/InvokeHelper$28;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->downloadAvatar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lcom/InvokeHelper$28;->val$resourceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/InvokeHelper$28;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/InvokeHelper$28;->val$resourceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/InvokeHelper$28;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igg/android/conquerors/GPCHelper;->DownloadAvatar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
