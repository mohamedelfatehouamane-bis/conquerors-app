.class public Lcom/igg/android/conquerors/col$GameDelegate;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/GPCGameDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/col;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/igg/android/conquerors/col$GameDelegate;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;
    .locals 3

    .line 781
    new-instance v0, Lcom/gpc/sdk/bean/GPCCharacter;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCCharacter;-><init>()V

    .line 783
    iget-object v1, p0, Lcom/igg/android/conquerors/col$GameDelegate;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_strIggId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCCharacter;->setCharId(Ljava/lang/String;)V

    .line 785
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCCharacter;->setCharName(Ljava/lang/String;)V

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPCID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igg/android/conquerors/col$GameDelegate;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_strIggId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCGameDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;
    .locals 3

    .line 794
    new-instance v0, Lcom/gpc/sdk/bean/GPCServerInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCServerInfo;-><init>()V

    .line 798
    :try_start_0
    iget-object v1, p0, Lcom/igg/android/conquerors/col$GameDelegate;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_strServerId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 800
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v1, 0x1

    .line 802
    :goto_0
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCServerInfo;->setServerId(I)V

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igg/android/conquerors/col$GameDelegate;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetm_strServerId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCGameDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
