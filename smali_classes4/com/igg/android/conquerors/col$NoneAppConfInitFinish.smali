.class public Lcom/igg/android/conquerors/col$NoneAppConfInitFinish;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/Kungfu$GPCAppConfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/col;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoneAppConfInitFinish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/igg/android/conquerors/col$NoneAppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    return-void
.end method
