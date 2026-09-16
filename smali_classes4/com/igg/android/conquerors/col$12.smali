.class Lcom/igg/android/conquerors/col$12;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->requestREADWRITEExternalPermission_next()V
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

    .line 1029
    iput-object p1, p0, Lcom/igg/android/conquerors/col$12;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1033
    invoke-static {}, Lcom/igg/android/conquerors/col;->-$$Nest$sfgetm_jniCallback()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jniCallback;->PermissionsRet(I)V

    return-void
.end method
