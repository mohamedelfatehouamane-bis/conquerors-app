.class Lcom/igg/android/conquerors/col$11;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->requestAndroidPermissions()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/igg/android/conquerors/col$11;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/igg/android/conquerors/col$11;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$mrequestREADWRITEExternalPermission(Lcom/igg/android/conquerors/col;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/igg/android/conquerors/col$11;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$mrequestREADWRITEExternalPermission_next(Lcom/igg/android/conquerors/col;)V

    :cond_0
    return-void
.end method
